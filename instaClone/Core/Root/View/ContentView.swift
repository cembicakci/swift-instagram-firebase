//
//  ContentView.swift
//  instaClone
//
//  Created by Cem Bıçakcı on 28.04.2024.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject var viewModel = ContentViewModel()
    @StateObject var registerViewModel = RegisterViewModel()
    
    var body: some View {
        Group {
            if viewModel.userSession == nil {
              LoginView()
                    .environmentObject(registerViewModel)
            } else {
                MainTabView()
                    
            }
        }
    }
}

#Preview {
    ContentView()
}
