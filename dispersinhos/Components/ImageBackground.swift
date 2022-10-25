//
//  BackgroundImage.swift
//  dispersinhos
//
//  Created by sml on 24/10/22.
//

import SwiftUI

struct ImageBackground<C: View> : View {
    
    let imagePath: String
    let childView: Children
    
    typealias Children = C
    typealias NewChildren = () -> (Children)

    init(_ childView: NewChildren , imagePath:String) {
      self.childView = childView()
        self.imagePath = imagePath
    }
    
    var body: some View {
        Image(imagePath)
            .resizable()
            .scaledToFit()
            .frame(height: UIScreen.main.bounds.height + 30)
            .overlay(
                VStack (alignment: .leading) {
                    childView
                }
            )
        
    }
    
}
