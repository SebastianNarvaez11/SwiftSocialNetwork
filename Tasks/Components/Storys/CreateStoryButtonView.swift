//
//  CreateStoryButtonView.swift
//  Tasks
//
//  Created by Sebastian on 27/07/24.
//

import SwiftUI

struct CreateStoryButtonView: View {
    var body: some View {
        VStack(spacing:15){
            Button(action: {}, label: {
                Image(systemName: "plus")
                    .foregroundStyle(.foreground)
                    .frame(width: 63, height: 63)
                    .overlay(
                        RoundedRectangle(cornerRadius: 25)
                            .stroke(lineWidth:3)
                            .tint(.customLabel)
                            .frame(width: 70, height: 70)
                    )
            })
            
            Text("My Story").font(.subheadline)

        }
        
    }
}

#Preview {
    CreateStoryButtonView()
}
