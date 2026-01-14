//
// SmartCityChatMessage+Preview.swift
// SmartCityChat
//
// This is free and unencumbered software released into the public domain.
// For more information, see <https://unlicense.org>
//

import Foundation

extension SmartCityChatMessage {
    static var preview: SmartCityChatMessage {
        SmartCityChatMessage(
            id: UUID().uuidString,
            sender: "John Doe",
            content: "Hello",
            timestamp: Date(),
            isRelay: false,
            originalSender: nil,
            isPrivate: false,
            recipientNickname: "Jane Doe",
            senderPeerID: nil,
            mentions: nil,
            deliveryStatus: .sent
        )
    }
}
