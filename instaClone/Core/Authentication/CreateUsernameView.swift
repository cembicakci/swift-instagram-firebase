//
//  CreateUsernameView.swift
//  instaClone
//
//  Created by Cem Bıçakcı on 28.04.2024.
//

import SwiftUI

struct CreateUsernameView: View {
    
    @State private var username = ""
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        NavigationStack {
            VStack {
                Spacer()
                 
                Text("Add your username")
                    .font(.title)
                    .fontWeight(.bold)
                    .foregroundStyle(Color("buttonTextColor"))
                
                Text("You'll use this email to sign into your account")
                    .font(.footnote)
                    .foregroundStyle(.gray)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal, 24)
                
                TextField("Username", text: $username)
                    .modifier(IGTextFieldModifier())
                
                NavigationLink {
                    CreatePasswordView()
                        .navigationBarBackButtonHidden()
                } label: {
                    Text("Next")
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
    CreateUsernameView()
}
