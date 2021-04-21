import Foundation

/// An information record for a specific event.
protocol EventInfoRecord {

    /// The channels to which the event will be sent (if publishing to multiple channels).
    var channels: [Channel]? { get }

    /// The channel to which the event will be sent (if publishing to a single channel).
    var channel: Channel? { get }

    /// The event name.
    var eventName: String { get }

    /// The event payload data.
    var eventPayload: Data { get }

    /// A connection to which the event will not be sent.
    var socketId: String? { get }
}
