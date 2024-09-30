//
//  PostBottomBarView.swift
//  Tasks
//
//  Created by Sebastian on 29/07/24.
//

import SwiftUI

struct PostBottomBarView: View {
    
    @Binding var isLiked:Bool
    
    var body: some View {
        HStack(spacing:20){
            
            ButtonLikeView(isPressed: $isLiked)
            
            Label(title: {
                Text("198")
                    .bold()
                    .font(.callout)
                    .foregroundStyle(.white)
            }, icon:{
                Image(systemName: "ellipsis.message.fill")
                    .font(.title3)
                    .foregroundStyle(.white)
            })
            
            
            Image(systemName: "paperplane.fill")
                .font(.title3)
                .foregroundStyle(.white)
            
            Spacer()
            
            Image(systemName: "bookmark")
                .font(.title3)
                .foregroundStyle(.white)
            
        }
        .padding(.horizontal, 20)
        .frame(width: UIScreen.main.bounds.width)
    }
}

#Preview {
    PostBottomBarView(isLiked: .constant(false))
}
