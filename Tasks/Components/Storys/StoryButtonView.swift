//
//  StoryButtonView.swift
//  Tasks
//
//  Created by Sebastian on 27/07/24.
//

import SwiftUI

struct StoryButtonView: View {
    
    var image : String
    var name : String
    
    var body: some View {
        VStack(spacing:15){
            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                Image(image)
                    .resizable()
                    .scaledToFill()
                    .frame(width: 60, height: 60)
                    .cornerRadius(20)
                    .clipped()
                    .overlay(
                        RoundedRectangle(cornerRadius: 20)
                            .stroke(lineWidth:2)
                            .tint(.white)
                            .frame(width: 70, height: 70)
                        
                    )
            })
            
            Text(name).font(.subheadline).frame(maxWidth: 60)
        }
    }
}

#Preview {
    StoryButtonView(image: "pitbull", name: "name")
}
