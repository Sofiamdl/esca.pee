//
//  Couch.swift
//  dispersinhos
//
//  Created by LoreVilaca on 27/10/22.
//

import SwiftUI

struct Couch: View {
    @State private var imageWidth: CGFloat = 0;
    
    var body: some View {
        RoomComponent(imagePath: ImageConstants.shared.BACKGROUND_COUCH, scene: CouchScene(with: imageWidth), setImageWidth: setWidth)
    }
    
    func setWidth (_ imageWidth: CGFloat) {
        self.imageWidth = imageWidth
    }
}
    
