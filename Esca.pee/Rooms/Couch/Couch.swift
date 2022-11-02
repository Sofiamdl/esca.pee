//
//  Couch.swift
//  dispersinhos
//
//  Created by LoreVilaca on 27/10/22.
//

import SwiftUI

struct Couch: View {
    @State private var imageWidth: CGFloat = 0;
    @EnvironmentObject private var coordinator: Coordinator
    
    var body: some View {
        RoomComponent(imagePath: ImageConstants.shared.BACKGROUND_COUCH, scene: CouchScene(with: imageWidth, coordinator: coordinator), setImageWidth: setWidth)
    }
    
    func setWidth (_ imageWidth: CGFloat) {
        self.imageWidth = imageWidth
    }
}
    
