//
//  Bathroom.swift
//  Esca.pee
//
//  Created by Guilherme Souza on 01/11/22.
//

import SwiftUI

struct Bathroom: View {
    @State private var imageWidth: CGFloat = 0;
    
    var body: some View {
        RoomComponent(imagePath: ImageConstants.shared.BACKGROUND_BATHROOM, scene: BathroomScene(with: imageWidth), setImageWidth: setWidth)
    }
    
    func setWidth (_ imageWidth: CGFloat) {
        self.imageWidth = imageWidth
    }
}
