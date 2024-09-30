//
//  LikeHeartView.swift
//  Tasks
//
//  Created by Sebastian on 31/07/24.
//

import SwiftUI

struct LikeHeartView: View {
    
    @State var isShow:Bool = false
    @Binding var isLiked:Bool
    
    var body: some View {
        ZStack{
            Image(systemName: "heart")
                .resizable()
                .scaledToFit()
                .foregroundStyle(.white)
                .frame(width: 150, height: 150)
                .scaleEffect(isShow ? 1 : 0)
                .animation(.bouncy(extraBounce:0.3), value: isShow)
            
            Image(systemName: "heart.fill")
                .resizable()
                .scaledToFit()
                .foregroundStyle(.white)
                .frame(width: 90, height: 90)
                .scaleEffect(isShow ? 1.5 : 0)
                .animation(.bouncy(duration: 1), value: isShow)
            
        }.onChange(of: isLiked, {
            if(isLiked){
                isShow = true
                
                DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
                    isShow = false
                }
            }
        })
    }
}

#Preview {
    LikeHeartView(isLiked:.constant(false))
}
