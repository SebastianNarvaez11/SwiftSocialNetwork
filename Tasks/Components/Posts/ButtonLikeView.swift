//
//  ButtonLikeView.swift
//  Tasks
//
//  Created by Sebastian on 31/07/24.
//

import SwiftUI

struct ButtonLikeView: View {
    
    @Binding var isPressed:Bool
    
    var body: some View {
        Button(action: { isPressed.toggle() }, label: {
            Label(
                title: {
                    Text("7,8k")
                        .bold()
                        .font(.callout)
                        .foregroundStyle(.white)
                },
                icon:{
                    Image(systemName: "heart.fill")
                        .font(.title3)
                        .foregroundStyle(.white)
                        .scaleEffect(isPressed ? 1.5 : 1)
                })
            .padding()
            .background(isPressed ? .red : .clear)
            .background(.ultraThinMaterial)
            .clipShape(RoundedRectangle(cornerRadius: 25))
            .animation(.bouncy, value: isPressed)
        })
    }
}

#Preview {
    ButtonLikeView(isPressed: .constant(false))
}
