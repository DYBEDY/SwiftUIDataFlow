//
//  ButtonView.swift
//  stateAndDataFlow
//
//  Created by Roman on 10.03.2022.
//

import SwiftUI


struct ButtonView: View {
    
    let title: String
    let color: Color
    let action: () -> Void
    
    var body: some View {
        Button(action: action) {
            Text(title)
                .font(.title)
                .fontWeight(.bold)
                .foregroundColor(.white)
        }
        .buttonAppearance(color)
        
    }
}

struct ActionButtonView_Previews: PreviewProvider {
    static var previews: some View {
        ButtonView(title: "SomeAction", color: .red, action: {})
    }
}
