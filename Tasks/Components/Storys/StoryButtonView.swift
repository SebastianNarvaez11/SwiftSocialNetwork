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
    @State var isPressed:Bool = true
    
    var body: some View {
        VStack(spacing:15){
            Button(action: {onPresseButton()}, label: {
                Image(image)
                    .resizable()
                    .scaledToFill()
                    .frame(width: 63, height: 63)
                    .cornerRadius(25)
                    .overlay(
                        RoundedRectangle(cornerRadius: 25)
                            .trim(from: 0, to: isPressed ? 1 : 0)
                            .stroke(lineWidth:3)
                            .tint(LinearGradient(
                                gradient: Gradient(colors:[.red, .orange]),
                                startPoint: .top,
                                endPoint: .bottom)
                            )
                            .frame(width: 70, height: 70)
                            .animation(.spring(duration:1), value: isPressed)
                        
                    )
            })
            
            Text(name).font(.subheadline).frame(maxWidth: 60)
        }
    }
    
    func onPresseButton () {
        isPressed.toggle()
        DispatchQueue.main.asyncAfter(deadline: .now() + 1){
            isPressed.toggle()
        }
    }
}

#Preview {
    StoryButtonView(image: "pitbull", name: "name")
}
