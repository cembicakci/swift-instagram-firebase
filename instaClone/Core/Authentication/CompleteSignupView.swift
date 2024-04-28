//
//  CompleteSignupView.swift
//  instaClone
//
//  Created by Cem Bıçakcı on 28.04.2024.
//

import SwiftUI

struct CompleteSignupView: View {
    
    @State private var password = ""
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        NavigationStack {
            VStack {
                Spacer()
                
                Text("Welcome to Insta")
                    .font(.title)
                    .fontWeight(.bold)
                    .foregroundStyle(Color("buttonTextColor"))
                
                Text("Click below to complete registration and start using Insta")
                    .font(.footnote)
                    .foregroundStyle(.gray)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal, 24)
                
                
                NavigationLink {
                    
                } label: {
                    Text("Complete sign up")
                        .font(.subheadline)
                        .fontWeight(.semibold)
                        .foregroundColor(Color("buttonTextColor"))
                        .frame(maxWidth: .infinity, alignment: .center)
                        .padding(.vertical, 10)
                }
                .overlay(
                    RoundedRectangle(cornerRadius: 6)
                        .stroke(Color("buttonTextColor"), lineWidth: 1)
                )
                .padding(.horizontal, 24)
                
                Spacer()
                
                
            }
            .toolbar {
                ToolbarItem(placement: .topBarLeading) {
                    Image(systemName: "chevron.left")
                        .imageScale(.large)
                        .onTapGesture {
                            dismiss()
                        }
                }
            }
        }
    }
    
}

#Preview {
    CompleteSignupView()
}
