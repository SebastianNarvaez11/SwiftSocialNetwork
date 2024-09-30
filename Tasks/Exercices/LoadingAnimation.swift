//
//  LoadingAnimation.swift
//  Tasks
//
//  Created by Sebastian on 31/07/24.
//

import SwiftUI

struct LoadingAnimation: View {
    
    @State var isLoading:Bool = false
    @State var isLoadingBar:Bool = false
    
    var body: some View {
        VStack{
            ZStack{
                Circle()
                    .stroke(.customLabel, lineWidth: 20)
                    .frame(width: 150, height: 150)
                
                Circle()
                    .trim(from: 0, to: 0.3)
                    .stroke(.blue, lineWidth: 20)
                    .frame(width: 150, height: 150)
                    .rotationEffect(Angle(degrees: isLoading ? 360 : 0))
                    .animation(.linear(duration: 1).repeatForever(autoreverses: false), value: isLoading)
            }.onAppear(){
                isLoading = true
            }
            
            ZStack{
                Rectangle()
                    .fill(Color(.systemGray5))
                    .frame(width: .infinity, height: 20)
                    
                Rectangle()
                    .fill(.green)
                    .frame(width: 200, height: 20)
                    .offset(x: isLoading ? -314 : 314, y:0)
                    .animation(.linear(duration: 1).repeatForever(autoreverses: false), value: isLoadingBar)
            }
            .onAppear(){
                isLoadingBar = true
            }
        }
    }
}

#Preview {
    LoadingAnimation()
}
