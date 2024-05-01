//
//  ContentViewModel.swift
//  instaClone
//
//  Created by Cem Bıçakcı on 1.05.2024.
//

import Foundation
import Firebase
import Combine

class ContentViewModel: ObservableObject {
    
    private let service = AuthService.shared
    private var cancellables = Set<AnyCancellable>()
    
    @Published var userSession: FirebaseAuth.User?
    
    init() {
        setupSubscribes()
    }
    
    func setupSubscribes() {
        service.$userSession.sink { [weak self] userSession in
            self?.userSession = userSession
        }
        .store(in: &cancellables)
    }
    
}