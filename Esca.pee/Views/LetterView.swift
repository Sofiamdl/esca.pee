//
//  File.swift
//  Esca.pee
//
//  Created by LoreVilaca on 02/11/22.
//

import Foundation
import SwiftUI

struct LetterView: View {
    
    var body: some View {
        Image(ImageConstants.shared.OPEN_PAPER)
            .resizable()
            .scaledToFit()
            .frame(minHeight: UIScreen.main.bounds.height - 30)
            .frame(maxWidth:.infinity, maxHeight: .infinity)
            
        
    }
}
