//
//  SearchView.swift
//  instaClone
//
//  Created by Cem Bıçakcı on 28.04.2024.
//

import SwiftUI

struct SearchView: View {
    
    @State private var searchText = ""
    
    var body: some View {
        NavigationStack {
            ScrollView {
                LazyVStack {
                    ForEach(User.MOCK_USER) { user in
                        NavigationLink(value: user) {
                            HStack {
                                Image(user.profileImageUrl ?? "")
                                    .resizable()
                                    .scaledToFill()
                                    .frame(width: 40, height: 40)
                                    .clipShape(Circle())
                                
                                VStack(alignment: .leading) {
                                    Text(user.username)
                                        .fontWeight(.semibold)
                                        .foregroundColor(Color("buttonTextColor"))
                                    Text(user.fullname ?? "")
                                        .foregroundColor(Color("buttonTextColor"))
                                }
                                .font(.footnote)
                                
                                Spacer()
                            }
                            .padding(.horizontal)
                        }
                    }
                }
                .searchable(text: $searchText, prompt: "Search")
            }
            .navigationDestination(for: User.self) { user in
                 ProfileView(user: user)
            }
            .navigationTitle("Search")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

#Preview {
    SearchView()
}
