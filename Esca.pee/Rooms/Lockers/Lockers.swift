//
//  Lockers.swift
//  dispersinhos
//
//  Created by sml on 20/10/22.
//

import SwiftUI

struct Lockers: View {
    @State private var imageWidth: CGFloat = 0
    @EnvironmentObject private var coordinator: Coordinator

    
    var body: some View {
        RoomComponent(imagePath: ImageConstants.shared.BACKGROUND_LOCKERS, scene: LockersScene(with: imageWidth, coordinator: coordinator), setImageWidth: setWidth)
    }
    
    func setWidth (_ imageWidth: CGFloat) {
        self.imageWidth = imageWidth
    }
}
