//
//  AuthService.swift
//  instaClone
//
//  Created by Cem Bıçakcı on 1.05.2024.
//

import Foundation
import FirebaseAuth

class AuthService {
    
    @Published var userSession: FirebaseAuth.User?
    
    static let shared = AuthService()
    
    init() {
        self.userSession = Auth.auth().currentUser
    }
    
    func login(withEmail email: String, password: String) async throws {
        
    }
    
    func createUser(email: String, password: String, username: String) async throws {
        print(email)
        print(password)
        print(username)
        
        do {
            let result = try await Auth.auth().createUser(withEmail: email, password: password)
            self.userSession = result.user
        } catch {
            print("Hata", error.localizedDescription)
        }
    }
    
    func loadUserData() async throws {
        
    }
    
    func signOut() async throws {
        print("sign out")
        do {
            try Auth.auth().signOut()
            self.userSession = nil
        } catch {

            print("Çıkış yaparken bir hata oluştu: \(error.localizedDescription)")
        }
    }
    
}
