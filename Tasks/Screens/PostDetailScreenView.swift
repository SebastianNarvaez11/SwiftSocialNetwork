//
//  PostDetailScreenView.swift
//  Tasks
//
//  Created by Sebastian on 29/07/24.
//

import SwiftUI

struct PostDetailScreenView: View {
    
    let post:Post
    @State var isAppearing:Bool = false

    
    var body: some View {
        ZStack(){
            ScrollView{
                VStack{
                    PostView(post: post, height: 530, showLikes: true)
                        .offset(x: isAppearing ? 0 : -300, y:0)
                        .animation(.smooth(duration: 0.5), value: isAppearing)
                    
                    Spacer()
                    
                    ButtonSheetCommentsView()
                    
                    ScrollView(){
                        VStack(spacing:20){
                            CommentView(image: "cat", name: "Mansy_90", comment: "Super foto")
                            CommentView(image: "men-colors", name: "Alicia01", comment: "Awesome")
                            CommentView(image: "women", name: "Jessyred", comment: "Nice Photography")
                            CommentView(image: "women", name: "Jessyred", comment: "Nice Photography")
                                .padding(.bottom, 100)//para que el ultimo comentario no lo tape la ButtonBarCommentView
                        }
                    }
                    .scrollIndicators(.hidden)
                    
                }
                
            }
            .padding(.bottom, 20) //para que el scroll no se vea por detras abajo de la ButtonBarCommentView
            .scrollIndicators(.hidden)
            
            
            VStack{
                Spacer()
                
                ButtonBarCommentView()
            }
        }
        .background(.backgroundPrimary)
        .navigationBarItems(leading: BackButtonView())
        .navigationBarBackButtonHidden(true)
        .onAppear(){
            isAppearing = true
        }
    }
}


let postDetailPreview: Post = Post(
    images: ["nieve", "nieve"],
    user: Profile(
        image: "women",
        name: "laura")
)


#Preview {
    PostDetailScreenView(post: postDetailPreview)
}
