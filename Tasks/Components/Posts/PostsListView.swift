//
//  PostsListView.swift
//  Tasks
//
//  Created by Sebastian on 28/07/24.
//

import SwiftUI

struct PostsListView: View {
    
    @State var isAppearing:Bool = false
    
    
    var body: some View {
        VStack(spacing: -60){
            ForEach(Array(posts.enumerated()), id: \.element.id) { index, postItem in
                PostView(post: postItem, height: 550, showLikes: false)
                    .shadow(color: .black, radius: index == 0 ? 0 : 20)
                    .offset(x:0, y: isAppearing ? 0: 20)
                    .animation(.bouncy(duration: 0.7, extraBounce: 0.2).delay(TimeInterval(index) * 0.2), value: isAppearing)
            }
            .onAppear(){
                isAppearing = true
            }
        }
        .background(.backgroundPrimary)
    }
}

#Preview {
    PostsListView()
}
