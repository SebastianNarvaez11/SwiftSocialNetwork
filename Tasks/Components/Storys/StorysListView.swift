//
//  StorysListView.swift
//  Tasks
//
//  Created by Sebastian on 28/07/24.
//

import SwiftUI

struct StorysListView: View {
    @State var isAppearing:Bool = false
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false){
            HStack(spacing:30){
                CreateStoryButtonView()
                
                ForEach(Array(profiles.enumerated()), id: \.element.id){index, profile in
                    
                    StoryButtonView(image: profile.image, name: profile.name)
                        .offset(x:0, y: isAppearing ? 0 : -50)
                        .animation(.bouncy(duration: 1).delay(TimeInterval(index) * 0.1), value: isAppearing)
                        .onAppear(){
                            isAppearing = true
                        }
                        
                }
            }
            .padding(.vertical, 10)
            .padding(.horizontal, 25)
        }
    }
}

#Preview {
    StorysListView()
}
