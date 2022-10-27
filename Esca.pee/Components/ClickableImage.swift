//
//  ClickableImage.swift
//  dispersinhos
//
//  Created by sml on 21/10/22.
//

import SwiftUI

struct ClickableImage: View {
    let imagePath: String 
    let clickedImage: () -> ()

    var body: some View {
        Image(imagePath).onTapGesture {
            clickedImage()
        }
    }
    
}
