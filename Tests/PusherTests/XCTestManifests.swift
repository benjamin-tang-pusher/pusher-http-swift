#if !canImport(ObjectiveC)
import XCTest

extension AppStateQueryTests {
    // DO NOT MODIFY: This is autogenerated, use:
    //   `swift test --generate-linuxmain`
    // to regenerate.
    static let __allTests__AppStateQueryTests = [
        ("testGetChannelInfoFailsForInvalidAttributes", testGetChannelInfoFailsForInvalidAttributes),
        ("testGetChannelInfoSucceeds", testGetChannelInfoSucceeds),
        ("testGetChannelsFailsForInvalidAttributes", testGetChannelsFailsForInvalidAttributes),
        ("testGetChannelsSucceeds", testGetChannelsSucceeds),
        ("testGetUsersForChannelFailsForPublicChannel", testGetUsersForChannelFailsForPublicChannel),
        ("testGetUsersForChannelSucceedsForPresenceChannel", testGetUsersForChannelSucceedsForPresenceChannel),
        ("testPostBatchEventsToChannelFailsForMultichannelEvents", testPostBatchEventsToChannelFailsForMultichannelEvents),
        ("testPostBatchEventsToChannelFailsForTooLargeBatch", testPostBatchEventsToChannelFailsForTooLargeBatch),
        ("testPostBatchEventsToChannelSucceedsForSingleChannelEvents", testPostBatchEventsToChannelSucceedsForSingleChannelEvents),
        ("testPostEventToChannelFailsForInvalidMultichannelEvent", testPostEventToChannelFailsForInvalidMultichannelEvent),
        ("testPostEventToChannelSucceedsForEncryptedChannel", testPostEventToChannelSucceedsForEncryptedChannel),
        ("testPostEventToChannelSucceedsForPrivateChannel", testPostEventToChannelSucceedsForPrivateChannel),
        ("testPostEventToChannelSucceedsForPublicChannel", testPostEventToChannelSucceedsForPublicChannel),
        ("testPostEventToChannelSucceedsForValidMultichannelEvent", testPostEventToChannelSucceedsForValidMultichannelEvent),
    ]
}

extension AuthTokenTests {
    // DO NOT MODIFY: This is autogenerated, use:
    //   `swift test --generate-linuxmain`
    // to regenerate.
    static let __allTests__AuthTokenTests = [
        ("testAuthenticateEncryptedChannelSucceeds", testAuthenticateEncryptedChannelSucceeds),
        ("testAuthenticatePresenceChannelSucceeds", testAuthenticatePresenceChannelSucceeds),
        ("testAuthenticatePresenceChannelWithMissingUserDataFails", testAuthenticatePresenceChannelWithMissingUserDataFails),
        ("testAuthenticatePresenceChannelWithUserInfoSucceeds", testAuthenticatePresenceChannelWithUserInfoSucceeds),
        ("testAuthenticatePrivateChannelSucceeds", testAuthenticatePrivateChannelSucceeds),
        ("testAuthenticatePublicChannelFails", testAuthenticatePublicChannelFails),
    ]
}

extension ClientOptionsTests {
    // DO NOT MODIFY: This is autogenerated, use:
    //   `swift test --generate-linuxmain`
    // to regenerate.
    static let __allTests__ClientOptionsTests = [
        ("testClientOptionsWithClusterSucceeds", testClientOptionsWithClusterSucceeds),
        ("testClientOptionsWithCustomHostSucceeds", testClientOptionsWithCustomHostSucceeds),
        ("testClientOptionsWithCustomPortAndMissingCustomHostFails", testClientOptionsWithCustomPortAndMissingCustomHostFails),
        ("testClientOptionsWithCustomPortSucceeds", testClientOptionsWithCustomPortSucceeds),
        ("testClientOptionsWithInvalidEncryptionMasterKeyFails", testClientOptionsWithInvalidEncryptionMasterKeyFails),
        ("testClientOptionsWithInvalidPrefixCustomHostFails", testClientOptionsWithInvalidPrefixCustomHostFails),
        ("testClientOptionsWithInvalidSuffixCustomHostFails", testClientOptionsWithInvalidSuffixCustomHostFails),
    ]
}

extension WebhookTests {
    // DO NOT MODIFY: This is autogenerated, use:
    //   `swift test --generate-linuxmain`
    // to regenerate.
    static let __allTests__WebhookTests = [
        ("testInvalidPusherKeyHeaderWebhookFails", testInvalidPusherKeyHeaderWebhookFails),
        ("testInvalidPusherSignatureHeaderWebhookFails", testInvalidPusherSignatureHeaderWebhookFails),
        ("testMissingBodyDataWebhookFails", testMissingBodyDataWebhookFails),
        ("testMissingPusherKeyHeaderWebhookFails", testMissingPusherKeyHeaderWebhookFails),
        ("testMissingPusherSignatureHeaderWebhookFails", testMissingPusherSignatureHeaderWebhookFails),
        ("testVerifyChannelOccupiedWebhookSucceeds", testVerifyChannelOccupiedWebhookSucceeds),
        ("testVerifyChannelVacatedWebhookSucceeds", testVerifyChannelVacatedWebhookSucceeds),
        ("testVerifyClientEventWebhookSucceeds", testVerifyClientEventWebhookSucceeds),
        ("testVerifyMemberAddedWebhookSucceeds", testVerifyMemberAddedWebhookSucceeds),
        ("testVerifyMemberRemovedWebhookSucceeds", testVerifyMemberRemovedWebhookSucceeds),
    ]
}

public func __allTests() -> [XCTestCaseEntry] {
    return [
        testCase(AppStateQueryTests.__allTests__AppStateQueryTests),
        testCase(AuthTokenTests.__allTests__AuthTokenTests),
        testCase(ClientOptionsTests.__allTests__ClientOptionsTests),
        testCase(WebhookTests.__allTests__WebhookTests),
    ]
}
#endif
