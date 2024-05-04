//
//  LoginView.swift
//  instaClone
//
//  Created by Cem Bıçakcı on 28.04.2024.
//

import SwiftUI

struct LoginView: View {
    
    @StateObject var viewModel = LoginViewModel()
    
    var body: some View {
        NavigationStack {
            
            Spacer()
            
            Image("instagram")
                .resizable()
                .scaledToFit()
                .frame(width: 220, height: 100)
            
            VStack(spacing: 12) {
                TextField("Enter your email", text: $viewModel.email)
                    .autocapitalization(.none)
                    .modifier(IGTextFieldModifier())
                
                SecureFieldWithButton("Enter your password", text: $viewModel.password)
            }
            
            Button {
                Task {
                    try await viewModel.signIn()
                }
            } label: {
                Text("Login")
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
            .padding(.top, 12)
            
            Button {
                
            } label: {
                Text("Forget Password?")
                    .font(.footnote)
                    .fontWeight(.semibold)
                    .padding(.top)
                    .padding(.trailing, 24)
            }
            .frame(maxWidth: .infinity, alignment: .trailing)
            
            HStack {
                Rectangle()
                    .frame(height: 0.5)
                Text("or")
                Rectangle()
                    .frame(height: 0.5)
            }
            .padding(.horizontal, 24)
            .foregroundColor(.gray)
            
            HStack {
                Image("facebook")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 20, height: 20)
                
                Text("Continue with Facebook")
                    .font(.footnote)
                    .fontWeight(.semibold)
                    .foregroundStyle(Color(.systemBlue))
            }
            .padding(.top, 8)
            
            Spacer()
            
            Divider()
            
            NavigationLink {
                AddEmailView()
                    .navigationBarBackButtonHidden()
            } label: {
                HStack {
                    Text("Do not have an account?")
                    
                    Text("Sign up")
                        .fontWeight(.semibold)
                }
            }
            .padding(.vertical, 16)
        }
    }
}

#Preview {
    LoginView()
}
