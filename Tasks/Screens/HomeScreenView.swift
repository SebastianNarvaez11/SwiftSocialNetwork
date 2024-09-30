//
//  HomeScreenView.swift
//  Tasks
//
//  Created by Sebastian on 24/07/24.
//

import SwiftUI

struct HomeScreenView: View {
    var body: some View {
        ZStack(){
            ScrollView{
                VStack{
                    HomeHeaderView()
                    
                    StorysListView()
                    
                    PostsListView()
                }
            }
            .padding(.top, 0.2)
            .background(.backgroundPrimary)
            .scrollIndicators(.hidden)
            
            BottomTabBarView()
        }
        .background(.backgroundPrimary)
        .ignoresSafeArea(edges: .bottom)
    }
}



#Preview {
    HomeScreenView()
}
