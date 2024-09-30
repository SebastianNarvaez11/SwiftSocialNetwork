//
//  PostTopBarView.swift
//  Tasks
//
//  Created by Sebastian on 29/07/24.
//

import SwiftUI

struct PostTopBarView: View {
    
    let name:String
    let image:String
    
    var body: some View {
        HStack{
            Label(
                title: {
                    Text(name)
                        .bold()
                    .foregroundStyle(.white)},
                icon: {
                    Image(image)
                        .resizable()
                        .scaledToFill()
                        .frame(width: 40, height: 40)
                        .clipShape(RoundedRectangle(cornerRadius: 15))
                    
                })
            
            Spacer()
            
            Image(systemName: "ellipsis").foregroundStyle(.white)
            
        }
        .padding(.horizontal , 20)
        .frame(width: UIScreen.main.bounds.width)
    }
}

#Preview {
    PostTopBarView(name: "test", image: "women")
}
