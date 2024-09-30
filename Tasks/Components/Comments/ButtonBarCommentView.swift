//
//  ButtonBarCommentView.swift
//  Tasks
//
//  Created by Sebastian on 30/07/24.
//

import SwiftUI

struct ButtonBarCommentView: View {
    
    @State var comment:String = ""
    
    var body: some View {
        VStack{
            HStack{
                Image("men")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 40, height: 40)
                    .clipShape(Circle())
                
                TextField("Add comment", text: $comment)
                
                Image(systemName: "paperplane.fill")
            }
            .padding(.vertical, 10)
            .padding(.horizontal,15)
            .background(.backgroundTertiary)
            .clipShape(RoundedRectangle(cornerRadius: 20))
            .padding(20)
        }
        .background(
            UnevenRoundedRectangle(
                cornerRadii: .init(
                    topLeading: 30,
                    bottomLeading: 0,
                    bottomTrailing: 0,
                    topTrailing: 30),
                style: .continuous)
            .foregroundStyle(.backgroundPrimary)
            .shadow(color:.black.opacity(0.1),radius: 10, x: 0, y: -10)
        )
    }
}

#Preview {
    ButtonBarCommentView()
}
