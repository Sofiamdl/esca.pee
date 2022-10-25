//
//  Lab.swift
//  dispersinhos
//
//  Created by sml on 20/10/22.
//

import SwiftUI

struct Lab: View {
    @State private var imageWidth: CGFloat = 0;

    var body: some View {
        RoomComponent(imagePath: ImageConstants.shared.BACKGROUND_LAB, scene: LabScene(with: imageWidth), setImageWidth: setWidth)
    }
    
    func setWidth(_ imageWidth:CGFloat) {
        self.imageWidth = imageWidth
    }
    
    func testePrint() {
        print("oi")
    }
}
