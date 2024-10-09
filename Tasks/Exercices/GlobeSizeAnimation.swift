//
//  GlobeSizeAnimation.swift
//  Tasks
//
//  Created by Sebastian on 30/09/24.
//

import SwiftUI

struct GlobeSizeAnimation: View {
    
    @State private var position: CGSize = .zero
    @GestureState private var dragState: AnimationDragState = .inactive
    
    var body: some View {
        VStack {
            VStack{
                Spacer()
                
                Image(systemName: "heart.fill")
                    .resizable()
                    .foregroundStyle(Color.red)
                    .frame(width: max(30, position.width + dragState.translation.width + 150),
                           height: max(30, position.width + dragState.translation.width + 150))
                    .offset(x: position.width + dragState.translation.width, y:0)
                    .animation(.bouncy(extraBounce: 0.4), value: [position.width, dragState.translation.width])
            }.frame(maxWidth: .infinity, maxHeight: 350)
            
            ZStack {
                Rectangle()
                    .frame(maxWidth: .infinity, maxHeight: 5)
                    .foregroundStyle(Color(.systemGray3))
                
                Image(systemName: "circle.fill")
                    .resizable()
                    .foregroundStyle(Color.accentColor)
                    .frame(width: 30, height: 30)
                    .offset(x: position.width + dragState.translation.width, y: 0)
                    .animation(.bouncy, value: dragState.isDragging)
                    .gesture(
                        DragGesture()
                            .updating(self.$dragState, body: { value, state, transaction in
                                state = .dragging(translation: value.translation)
                            })
                            .onEnded({ value in
                                // Actualiza position.width solo al finalizar el gesto
                                position.width += value.translation.width
                            })
                    )
            }
            .frame(width: 220)
        }
    }
}


#Preview {
    GlobeSizeAnimation()
}
