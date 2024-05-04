//
//  UserService.swift
//  instaClone
//
//  Created by Cem Bıçakcı on 4.05.2024.
//

import Foundation
import Firebase
import FirebaseFirestore

struct UserService {
    
    @MainActor
    static func fetchAllUsers() async throws -> [User] {
        /*
        var users = [User]()
        let snapshot = try await Firestore.firestore().collection("users").getDocuments()
        let documents = snapshot.documents
        
        for doc in documents {
            guard let user = try? doc.data(as: User.self) else { return users}
            users.append(user)
        }
        
        return users
        */
        
        let snapshot = try await Firestore.firestore().collection("users").getDocuments()
        return snapshot.documents.compactMap({ try? $0.data(as: User.self) })
        
    }
    
}
