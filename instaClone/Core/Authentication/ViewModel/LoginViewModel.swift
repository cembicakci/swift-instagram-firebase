//
//  LoginViewModel.swift
//  instaClone
//
//  Created by Cem Bıçakcı on 4.05.2024.
//

import Foundation

class LoginViewModel: ObservableObject {
    @Published var email = ""
    @Published var password = ""
    
    func signIn() async throws {
        try await AuthService.shared.login(withEmail: email, password: password)
    }
    
}
