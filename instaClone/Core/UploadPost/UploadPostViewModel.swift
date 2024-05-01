//
//  UploadPostViewModel.swift
//  instaClone
//
//  Created by Cem Bıçakcı on 1.05.2024.
//

import Foundation
import PhotosUI
import SwiftUI

class UploadPostViewModel: ObservableObject {
    
    @Published var selectedImage: PhotosPickerItem? {
        didSet {
            Task {
                await loadImage(fromImage:selectedImage)
            }
        }
    }
    
    @Published var postImage: Image?
    
    func loadImage(fromImage item: PhotosPickerItem?) async {
        
        guard let item = item else { return }
        
        guard let data = try? await item.loadTransferable(type: Data.self) else { return }
        
        guard let uiImage = UIImage(data: data) else { return }
        
        self.postImage = Image(uiImage: uiImage)
    }
    
}
