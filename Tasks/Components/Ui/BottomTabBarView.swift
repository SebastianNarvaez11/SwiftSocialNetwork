//
//  BottomTabBarView.swift
//  Tasks
//
//  Created by Sebastian on 28/07/24.
//

import SwiftUI

struct BottomTabBarView: View {
    var body: some View {
        VStack{
            Spacer()
            
            HStack(){
                Spacer()
                Image(systemName: "house")
                    .font(.system(size: 25))
                    .foregroundStyle(.customLabel)
                Spacer()
                Image(systemName: "magnifyingglass")
                    .font(.system(size: 25))
                    .foregroundStyle(.customLabel)

                Spacer()
                Image(systemName: "plus.app")
                    .font(.system(size: 25))
                    .foregroundStyle(.customLabel)

                Spacer()
                Image(systemName: "heart")
                    .font(.system(size: 25))
                    .foregroundStyle(.customLabel)

                Spacer()
                Image(systemName: "person")
                    .font(.system(size: 25))
                    .foregroundStyle(.customLabel)

                Spacer()
            }
            .padding(.vertical, 30)
            .frame(maxWidth: .infinity)
            .background(
                UnevenRoundedRectangle(
                    cornerRadii: .init(
                        topLeading: 30,
                        bottomLeading: 0,
                        bottomTrailing: 0,
                        topTrailing: 30),
                    style: .continuous)
                .foregroundStyle(.backgroundPrimary)
                .shadow(color:.black.opacity(0.2),radius: 10)
            )
        }
    }
}

#Preview {
    BottomTabBarView()
}
