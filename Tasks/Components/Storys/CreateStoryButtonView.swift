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
                    .foregroundStyle(.white)
                    .frame(width: 60, height: 60)
                    .overlay(
                        RoundedRectangle(cornerRadius: 20)
                            .stroke(lineWidth:2)
                            .tint(.white)
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
