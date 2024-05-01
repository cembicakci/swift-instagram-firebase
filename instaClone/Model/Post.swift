//
//  Post.swift
//  instaClone
//
//  Created by Cem Bıçakcı on 1.05.2024.
//

import Foundation

struct Post: Identifiable, Hashable, Codable {
    let id: String
    let ownerUid: String
    let caption: String
    var likes: Int
    let imageUrl: String
    let timestamp: Date
    let user: User?
}

extension Post {
    static var MOCK_POST: [Post] = [
        .init(id: UUID().uuidString, ownerUid: UUID().uuidString, caption: "iOS Developer", likes: 123, imageUrl: "user1", timestamp: Date(), user: User.MOCK_USER[0]),
        .init(id: UUID().uuidString, ownerUid: UUID().uuidString, caption: "iOS Developer", likes: 456, imageUrl: "user2", timestamp: Date(), user: User.MOCK_USER[1]),
        .init(id: UUID().uuidString, ownerUid: UUID().uuidString, caption: "iOS Developer", likes: 789, imageUrl: "user3", timestamp: Date(), user: User.MOCK_USER[2]),
        .init(id: UUID().uuidString, ownerUid: UUID().uuidString, caption: "iOS Developer", likes: 114, imageUrl: "user4", timestamp: Date(), user: User.MOCK_USER[3]),
        .init(id: UUID().uuidString, ownerUid: UUID().uuidString, caption: "iOS Developer", likes: 463, imageUrl: "user5", timestamp: Date(), user: User.MOCK_USER[4])
    ]
}
