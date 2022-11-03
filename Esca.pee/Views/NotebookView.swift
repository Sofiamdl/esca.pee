//
//  NotebookView.swift
//  Esca.pee
//
//  Created by LoreVilaca on 03/11/22.
//

import Foundation
import SwiftUI

struct NotebookView: View {
    
    var body: some View {
        ZStack {
            Image(ImageConstants.shared.EIGHT_HEARTS)
                .resizable()
                .scaledToFit()
                .frame(minHeight: UIScreen.main.bounds.height - 30)
        }
    }
}
