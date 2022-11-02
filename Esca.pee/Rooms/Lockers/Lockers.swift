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
    @EnvironmentObject private var object: CollectableManager

    
    var body: some View {
        RoomComponent(imagePath: ImageConstants.shared.BACKGROUND_LOCKERS2, scene: LockersScene(with: imageWidth, coordinator: coordinator, object: object), setImageWidth: setWidth)
    }
    
    func setWidth (_ imageWidth: CGFloat) {
        self.imageWidth = imageWidth
    }
}
