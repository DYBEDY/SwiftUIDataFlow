//
//  ButtonAppearenceModifier.swift
//  stateAndDataFlow
//
//  Created by Roman on 10.03.2022.
//

import UIKit
import SwiftUI

struct ButtonAppearenceModifier: ViewModifier {
    let color: Color
    
    func body(content: Content) -> some View {
        content
            .frame(width: 200, height: 60)
            .background(color)
            .cornerRadius(20)
            .overlay(
                RoundedRectangle(cornerRadius: 20, style: .continuous)
                    .stroke(Color.black, lineWidth: 4)
            )
    }
}

extension View {
    func buttonAppearance(_ color: Color) -> some View {
        ModifiedContent(content: self, modifier: ButtonAppearenceModifier(color: color))
    }
}
