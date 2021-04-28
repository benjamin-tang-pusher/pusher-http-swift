import Foundation

/// An event that is contained within a received `Webhook`.
public struct WebhookEvent: WebhookEventRecord {

    public let eventType: WebhookEventType
    public let channelName: String
    public let eventName: String?
    public let eventData: Data?
    public let socketId: String?
    public let userId: String?

    enum CodingKeys: String, CodingKey {
        case eventType = "name"
        case channelName = "channel"
        case eventName = "event"
        case eventData = "data"
        case socketId = "socket_id"
        case userId = "user_id"
    }

    // MARK: - Lifecycle (used in Tests)

    init(eventType: WebhookEventType,
         channelName: String,
         eventName: String? = nil,
         eventData: Data? = nil,
         socketId: String? = nil,
         userId: String? = nil) {
        self.eventType = eventType
        self.channelName = channelName
        self.eventName = eventName
        self.eventData = eventData
        self.socketId = socketId
        self.userId = userId
    }

    // MARK: - Event data decryption

    /// Returns an `WebhookEvent` with decrypted `eventData` if `channelName` indicates
    /// the event occured on an encrypted channel.
    ///
    /// The event data ciphertext is decrypted using the received nonce and a shared secret which is
    /// a concatenation of the channel name and the `encryptionMasterKeyBase64` from `options`.
    /// - Parameter options: Configuration options used to managing the connection.
    /// - Throws: An `PusherError` if decrypting the `eventData` fails for some reason.
    /// - Returns: A copy of the receiver, but with decrypted `eventData`. If the `channel` is not
    ///            encrypted, the receiver will be returned unaltered.
    func decrypted(using options: PusherClientOptions) throws -> Self {
        guard let eventData = eventData, ChannelType(channelName: channelName) == .encrypted else {
            return self
        }

        let encryptedData = try JSONDecoder().decode(EncryptedData.self, from: eventData)
        let sharedSecretString = "\(channelName)\(options.encryptionMasterKeyBase64)"
        let sharedSecret = Crypto.sha256Digest(data: sharedSecretString.toData())
        let decryptedEventData = try Crypto.decrypt(data: Data(base64Encoded: encryptedData.ciphertext)!,
                                                    nonce: Data(base64Encoded: encryptedData.nonce)!,
                                                    key: sharedSecret)
        return WebhookEvent(eventType: eventType,
                            channelName: channelName,
                            eventName: eventName,
                            eventData: decryptedEventData,
                            socketId: socketId,
                            userId: userId)
    }
}