//
//  IGTextFieldModifier.swift
//  instaClone
//
//  Created by Cem Bıçakcı on 28.04.2024.
//

import SwiftUI

struct IGTextFieldModifier: ViewModifier {
    
    func body(content: Content) -> some View {
        content
            .font(.subheadline)
            .padding(12)
            .background(Color(.systemGray6))
            .cornerRadius(10)
            .padding(.horizontal, 24)
    }
    
}
