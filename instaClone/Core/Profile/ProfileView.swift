//
//  ProfileView.swift
//  instaClone
//
//  Created by Cem Bıçakcı on 28.04.2024.
//

import SwiftUI

struct ProfileView: View {
    
    private let gridItems: [GridItem] = [
        .init(.flexible(), spacing: 1),
        .init(.flexible(), spacing: 1),
        .init(.flexible(), spacing: 1)
    ]
    
    var body: some View {
        NavigationStack {
            ScrollView {
                VStack {
                           
                    // Header
                    VStack(spacing: 10) {
                        HStack {
                            Image("profile")
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
                            Text("Cem Bıçakcı")
                                .font(.footnote)
                                .fontWeight(.semibold)
                            Text("@cmbicakci")
                                .font(.footnote)
                        }
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.horizontal)
                        
                        Button {
                            
                        } label: {
                            Text("Edit Profile")
                                .font(.subheadline)
                                .fontWeight(.bold)
                                .frame(width: 360, height: 32)
                                .foregroundColor(Color("buttonTextColor"))
                                .overlay(
                                    RoundedRectangle(cornerRadius: 6)
                                        .stroke(.gray, lineWidth: 1)
                                )
                        }
                        
                        Divider()
                    }
                    
                    // Posts
                    LazyVGrid(columns: gridItems, spacing: 1) {
                        ForEach(0...20, id:\.self) { index in
                            Image("profile")
                                .resizable()
                                .scaledToFit()
                        }
                    }

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
    ProfileView()
}
