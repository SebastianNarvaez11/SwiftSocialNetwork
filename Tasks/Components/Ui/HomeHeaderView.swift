//
//  HomeHeaderView.swift
//  Tasks
//
//  Created by Sebastian on 27/07/24.
//

import SwiftUI

struct HomeHeaderView: View {
    var body: some View {
        HStack{
            Image(systemName: "gearshape")
                .font(.title)
                .foregroundStyle(.customLabel)
            Spacer()
            Text("Instagram")
            Spacer()
            Image(systemName: "message")
                .font(.title)
                .foregroundStyle(.customLabel)
        }
        .padding(.horizontal, 25)
        .padding(.bottom, 10)
    }
}

#Preview {
    HomeHeaderView()
}
