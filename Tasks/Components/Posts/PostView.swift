//
//  PostView.swift
//  Tasks
//
//  Created by Sebastian on 28/07/24.
//

import SwiftUI
import AVKit

struct PostView: View {
    let post:Post
    let height:CGFloat
    let showLikes: Bool?
    @State var isLiked:Bool = false
    @State var showMore:Bool = false
    
    var body: some View {
        ZStack {
            
            if !post.isVideo {
                GeometryReader { geometry in
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack(spacing: 0) {
                            ForEach(post.images, id: \.self) { image in
                                NavigationLink(destination: PostDetailScreenView(post: post)){
                                    Image(image)
                                        .resizable()
                                        .aspectRatio(contentMode: .fill)
                                        .frame(width: geometry.size.width)
                                        .clipped()
                                        .onTapGesture(count: 2) {
                                            isLiked.toggle()
                                        }
                                }
                            }
                        }
                    }
                }
            }else{
                let player = AVPlayer(url: post.videoURL!)
                
                HStack{
                    Spacer(minLength:16)
                    
                    GeometryReader { geometry in
                        NavigationLink(destination: PostDetailScreenView(post: post)){
                            CustomVideoPlayer(player: player)
                                .onAppear(){
                                    player.play()
                                }.onTapGesture(count: 2) {
                                    isLiked.toggle()
                                }
                        }
                        
                    }
                }
            }
            
            LikeHeartView(isLiked:$isLiked)
            
            
            VStack(){
                PostTopBarView(name: post.user.name, image: post.user.image)
                
                
                Spacer()
                
                PostBottomBarView(isLiked: $isLiked)
                    .padding(.bottom, (showLikes! ? 0 : 60))
                
                if showLikes == true {
                    LikesPreviewWithDescriptionView(showMore: $showMore)
                }
                
            }.padding()
        }
        .frame(width: UIScreen.main.bounds.width, height: showMore ? height + 100 : height )
        .animation(.bouncy, value: showMore)
        .cornerRadius(30)
    }
}

let postPreview: Post = Post(
    images: ["nieve", "nieve"],
    user: Profile(
        image: "women",
        name: "laura"),
    isVideo: true,
    videoURL: URL(string: "https://videos.pexels.com/video-files/856882/856882-hd_1920_1080_24fps.mp4")
)

#Preview {
    PostView(post: postPreview, height: 500, showLikes: true)
}
