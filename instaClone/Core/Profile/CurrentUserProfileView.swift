//
//  CurrentUserProfileView.swift
//  instaClone
//
//  Created by Cem Bıçakcı on 1.05.2024.
//


import SwiftUI

struct CurrentUserProfileView: View {
    
    let user: User
    
    var posts: [Post] {
        return Post.MOCK_POST.filter({ $0.user?.username == user.username })
    }
    
    var body: some View {
        
        NavigationStack {
            ScrollView {
                VStack {
                    // Header
                    ProfileHeaderView(user: user)
                    // Posts
                    PostGridView(posts: posts)
                }
            }
            .navigationTitle("Profile")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .topBarTrailing) {
                    Button {
                        
                    } label: {
                        Image(systemName: "line.3.horizontal")
                            .foregroundColor(Color("buttonTextColor"))
                    }
                    
                }
            }
        }
        
    }
}

#Preview {
    CurrentUserProfileView(user: User.MOCK_USER[0])
}
