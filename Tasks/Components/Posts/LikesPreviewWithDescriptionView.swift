//
//  LikesPreviewWithDescriptionView.swift
//  Tasks
//
//  Created by Sebastian on 29/07/24.
//

import SwiftUI

struct LikesPreviewWithDescriptionView: View {
    
    @Binding var showMore:Bool
    
    var body: some View {
        HStack(spacing:20){
            HStack(spacing: -10){
                LikeUserPreviewView(image: "women")
                LikeUserPreviewView(image: "men")
                LikeUserPreviewView(image: "men2")
            }
            
            Text("Hello friends, how are you asdasdsad asdasd").font(.callout)
                .bold()
                .foregroundStyle(.white)
                .lineLimit(1)
            
            Button(action: {showMore.toggle()}, label: {
                Text("More")
                    .foregroundStyle(.black)
                    .font(.caption)
                    .padding(.vertical, 5)
                    .padding(.horizontal, 8)
                    .background(.white)
                    .clipShape(Capsule())
            })
        }.padding(.horizontal, 20)
    }
}

#Preview {
    LikesPreviewWithDescriptionView(showMore: .constant(false))
}
