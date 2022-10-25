//
//  ScrollBackground.swift
//  dispersinhos
//
//  Created by sml on 20/10/22.
//

import SwiftUI

struct ScrollBackground<C: View> : View {
    
    typealias Children = C
    typealias NewChildren = () -> (Children)
    
    let childView: Children
    
    init(_ childView: NewChildren) {
      self.childView = childView()
      UIScrollView.appearance().bounces = false
    }
    
    var body: some View {
        ScrollView( .horizontal, showsIndicators: false) {
                    childView
        }
        .ignoresSafeArea()
        .frame(maxWidth:.infinity, maxHeight: .infinity)
    }
    
}

