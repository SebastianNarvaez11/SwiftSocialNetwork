//
//  BackButtonView.swift
//  Tasks
//
//  Created by Sebastian on 29/07/24.
//

import SwiftUI

struct BackButtonView: View {
    @Environment(\.presentationMode) var presentationMode

       var body: some View {
           Button(action: {
               presentationMode.wrappedValue.dismiss()
           }) {
               Image(systemName: "chevron.left")
                   .foregroundColor(.customLabel)
           }
       }
}

#Preview {
    BackButtonView()
}
