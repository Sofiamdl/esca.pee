//
//  Lockers.swift
//  dispersinhos
//
//  Created by sml on 20/10/22.
//

import SwiftUI

struct Lockers: View {
    @State private var imageWidth: CGFloat = 0
    
    var body: some View {
        RoomComponent(imagePath: ImageConstants.shared.BACKGROUND_LOCKERS, scene: LockersScene(with: imageWidth), setImageWidth: setWidth)
    }
    
    func setWidth (_ imageWidth: CGFloat) {
        self.imageWidth = imageWidth
    }
}
