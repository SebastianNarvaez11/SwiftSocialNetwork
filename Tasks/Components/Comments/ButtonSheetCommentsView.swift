//
//  ButtonSheetCommentsView.swift
//  Tasks
//
//  Created by Sebastian on 30/07/24.
//

import SwiftUI

struct ButtonSheetCommentsView: View {
    
    @State var showSheet:Bool = false
    
    
    var body: some View {
        Button(action: { showSheet = true}, label: {
            Image(systemName: "control")
                .bold()
                .foregroundColor(Color.primary)
                .padding(.vertical, 10)
        }).sheet(isPresented: $showSheet, content: {
            
            VStack(spacing:0){
                ScrollView(){
                    VStack(spacing:20){
                        Text("Comments:").bold()
                        CommentView(image: "cat", name: "Mansy_90", comment: "Super foto")
                        CommentView(image: "men-colors", name: "Alicia01", comment: "Awesome")
                        CommentView(image: "women", name: "Jessyred", comment: "Nice Photography")
                        CommentView(image: "men", name: "Mansy_90", comment: "Super foto")
                        CommentView(image: "men2", name: "Alicia01", comment: "Awesome")
                        CommentView(image: "sun", name: "Jessyred", comment: "Nice Photography")
                        CommentView(image: "pitbull", name: "Mansy_90", comment: "Super foto")
                        CommentView(image: "nieve", name: "Alicia01", comment: "Awesome")
                        CommentView(image: "men", name: "Jessyred", comment: "Nice Photography")
                        CommentView(image: "cat", name: "Mansy_90", comment: "Super foto")
                        CommentView(image: "men-colors", name: "Alicia01", comment: "Awesome")
                        CommentView(image: "women", name: "Jessyred", comment: "Nice Photography")
                        CommentView(image: "cat", name: "Mansy_90", comment: "Super foto")
                        CommentView(image: "men-colors", name: "Alicia01", comment: "Awesome")
                        CommentView(image: "women", name: "Jessyred", comment: "Nice Photography")
                    }.padding(0)
                }
                .scrollIndicators(.hidden)
                .padding(.top, 30)
                .padding(.horizontal, 20)
                
                
                
                ButtonBarCommentView()
            }
            .background(.backgroundPrimary)
            .presentationDetents([ .large])
            
        })
    }
}

#Preview {
    ButtonSheetCommentsView()
}
