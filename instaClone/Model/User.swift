//
//  User.swift
//  instaClone
//
//  Created by Cem Bıçakcı on 1.05.2024.
//

import Foundation

struct User: Identifiable, Codable, Hashable {
    let id: String
    var username: String
    var profileImageUrl: String?
    var fullname: String?
    var bio: String?
    let email: String
    
}

extension User {
    static var MOCK_USER: [User] = [
        .init(id: UUID().uuidString, username: "emily1", profileImageUrl: "user1", fullname: "Emily Blunt", bio: "iOS Developer", email: "emily1@gmail.com"),
        .init(id: UUID().uuidString, username: "jennienicholas", profileImageUrl: "user2", fullname: "Jennie Nicholas", bio: "lawyer", email: "jennie@gmail.com"),
        .init(id: UUID().uuidString, username: "annewillson", profileImageUrl: "user3", fullname: "Anne Wilson", bio: "backend dev", email: "mel@gmail.com"),
        .init(id: UUID().uuidString, username: "natalia1", profileImageUrl: "user4", fullname: "Natalia Portman", bio: "mobile dev", email: "natalia@gmail.com"),
        .init(id: UUID().uuidString, username: "monserr", profileImageUrl: "user5", fullname: "Monse Ramirez", bio: "dentist", email: "monse@gmail.com")
    ]
}
