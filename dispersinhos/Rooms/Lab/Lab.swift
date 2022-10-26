//
//  Lab.swift
//  dispersinhos
//
//  Created by sml on 20/10/22.
//

import SwiftUI

struct Lab: View {
    @State private var imageWidth: CGFloat = 0;
    @EnvironmentObject private var object: CollectableManager
    
    var body: some View {

        RoomComponent(imagePath: ImageConstants.shared.BACKGROUND_LAB, scene: LabScene(with: imageWidth, object: object), setImageWidth: setWidth)
    }
    
    func setWidth(_ imageWidth:CGFloat) {
        self.imageWidth = imageWidth
    }
    
    func testePrint() {
        print("oi")
    }
}
