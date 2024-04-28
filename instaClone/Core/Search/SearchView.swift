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
                    ForEach(0...20, id: \.self) { user in
                        HStack {
                            Image("profile")
                                .resizable()
                                .scaledToFill()
                                .frame(width: 40, height: 40)
                                .clipShape(Circle())
                            
                            VStack(alignment: .leading) {
                                Text("cembicakci")
                                    .fontWeight(.semibold)
                                    .foregroundColor(Color("buttonTextColor"))
                                Text("Cem Bıçakcı")
                                    .foregroundColor(Color("buttonTextColor"))
                            }
                            .font(.footnote)
                            
                            Spacer()
                        }
                        .padding(.horizontal)
                    }
                }
                .searchable(text: $searchText, prompt: "Search")
            }
            .navigationTitle("Search")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

#Preview {
    SearchView()
}
