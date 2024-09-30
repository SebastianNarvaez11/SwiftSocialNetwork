//
//  LikeUserPreviewView.swift
//  Tasks
//
//  Created by Sebastian on 29/07/24.
//

import SwiftUI

struct LikeUserPreviewView: View {
    
    let image:String
    var body: some View {
        Image(image)
            .resizable()
            .scaledToFill()
            .frame(width: 35, height: 35)
            .clipShape(Circle())
            .overlay(
                Circle()
                    .stroke(lineWidth: 3)
                    .foregroundStyle(.white)
            )
    }
}

#Preview {
    LikeUserPreviewView(image: "women")
}
