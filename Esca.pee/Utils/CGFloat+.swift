//
//  CGFloat+.swift
//  dispersinhos
//
//  Created by sml on 24/10/22.
//

import SwiftUI

let screenHeight:CGFloat = UIScreen.main.bounds.height
extension Double {
    func calculate(dimensionSize: Double) -> Double {
        return screenHeight * dimensionSize
    }
    
    func vw(_ dimensionSize: Double) -> Double {
        return Double(self) * dimensionSize
    }
    
    var vh: CGFloat {
        calculate(dimensionSize: Double(self))
    }
}
