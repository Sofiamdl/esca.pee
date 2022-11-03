//
//  Bathroom.swift
//  Esca.pee
//
//  Created by Guilherme Souza on 01/11/22.
//

import SwiftUI

struct Bathroom: View {
    @State private var imageWidth: CGFloat = 0;
    @EnvironmentObject private var object: CollectableManager
    @EnvironmentObject private var coordinator: Coordinator

    var body: some View {
        RoomComponent(imagePath: ImageConstants.shared.BACKGROUND_BATHROOM, scene: BathroomScene(with: imageWidth, object: object, coordinator: coordinator), setImageWidth: setWidth)
    }
    
    func setWidth (_ imageWidth: CGFloat) {
        self.imageWidth = imageWidth
    }
}
