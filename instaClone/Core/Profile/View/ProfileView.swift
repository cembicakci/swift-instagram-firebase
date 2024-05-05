//
//  ProfileView.swift
//  instaClone
//
//  Created by Cem Bıçakcı on 28.04.2024.
//

import SwiftUI

struct ProfileView: View {
    
    let user: User
        
    var posts: [Post] {
        return Post.MOCK_POST.filter({ $0.user?.username == user.username })
    }
    
    
    var body: some View {
        
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
        
    }
}

#Preview {
    ProfileView(user: User.MOCK_USER[0])
}
