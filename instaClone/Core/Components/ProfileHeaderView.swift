//
//  ProfileHeaderView.swift
//  instaClone
//
//  Created by Cem Bıçakcı on 1.05.2024.
//

import SwiftUI

struct ProfileHeaderView: View {
    
    let user: User
    
    @State private var showEditProfile = false
    
    var body: some View {
        VStack(spacing: 10) {
            HStack {
                Image(user.profileImageUrl ?? "")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 80, height: 80)
                    .clipShape(Circle())
                
                Spacer()
                
                HStack(spacing: 8) {
                    UserStatView(value: 10, title: "Posts")
                    UserStatView(value: 10, title: "Followers")
                    UserStatView(value: 10, title: "Followings")
                }
            }
            .padding(.horizontal)
            
            VStack(alignment: .leading, spacing: 4) {
                Text(user.fullname ?? "-")
                    .font(.footnote)
                    .fontWeight(.semibold)
                Text(user.bio ?? "")
                    .font(.footnote)
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding(.horizontal)
            
            Button {
                
                if user.isCurrentUser {
                    // Edit
                    showEditProfile.toggle()
                } else {
                    // Follow
                }
                
            } label: {
                Text(user.isCurrentUser ? "Edit Profile": "Follow")
                    .font(.subheadline)
                    .fontWeight(.bold)
                    .frame(width: 360, height: 32)
                    .background(user.isCurrentUser ? .white : Color(.blue))
                    .foregroundColor(user.isCurrentUser ? .black : .white)
                    .foregroundColor(Color("buttonTextColor"))
                    .cornerRadius(6)
                    .overlay(
                        RoundedRectangle(cornerRadius: 6)
                            .stroke(user.isCurrentUser ? .gray : .clear, lineWidth: 1)
                    )
            }
            
            Divider()
        }
        .fullScreenCover(isPresented: $showEditProfile, content: {
            EditProfileView(user: user)
        })
    }
}

#Preview {
    ProfileHeaderView(user: User.MOCK_USER[0])
}
