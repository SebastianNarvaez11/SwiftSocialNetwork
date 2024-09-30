//
//  CommentView.swift
//  Tasks
//
//  Created by Sebastian on 30/07/24.
//

import SwiftUI

struct CommentView: View {
    let image:String
    let name:String
    let comment:String
    
    var body: some View {
        HStack{
            Image(image)
                .resizable()
                .scaledToFill()
                .frame(width: 40, height: 40)
                .clipShape(RoundedRectangle(cornerRadius: 10))
            
            VStack(alignment: .leading){
                Text(name)
                    .foregroundStyle(.customLabel)
                    .bold()
                    .font(.system(size: 13))
                Text(comment)
                    .font(.system(size: 14))
            }
            
            Spacer()
            
            Button(action: {}, label: {
                Text("Replay")
                    .font(.caption)
                    .foregroundStyle(Color.primary)
                    .padding(.vertical, 8)
                    .padding(.horizontal, 12)
                    .background(.backgroundTertiary)
                    .clipShape(Capsule())
            })
            
            Button(action: {}, label: {
                Image(systemName: "heart")
                    .foregroundStyle(Color.primary)
                    .padding(10)
                    .background(.backgroundTertiary)
                    .clipShape(Circle())
            })
        }.padding(.horizontal, 20)
    }
}

#Preview {
    CommentView(image: "men", name: "Mandy10", comment: "Superb photography!")
}
