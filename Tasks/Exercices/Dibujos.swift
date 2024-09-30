//
//  Dibujos.swift
//  Tasks
//
//  Created by Sebastian on 30/07/24.
//

import SwiftUI

struct Dibujos: View {
    var body: some View {
        VStack{
//            Path{ path in
//                path.addRect(CGRect(x: 0, y: 0, width: 380, height: 200))
//                path.addQuadCurve(to: CGPoint(x: 380, y: 0), control: CGPoint(x: 200, y: -100))
//            }
//            .fill(.blue)
            
            Button(action: {}, label: {
                Text("Button")
                    .foregroundStyle(.white)
                    .frame(width: 100, height: 100)
                    .background(CustomRectangle())
            })
        }
    }
}


struct CustomRectangle:Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        path.move(to: CGPoint(x: 0, y: 0))
        path.addRect(CGRect(x: 0, y: 0, width: rect.size.width, height: rect.size.height))
        path.addQuadCurve(to: CGPoint(x: rect.size.width, y: 0), control: CGPoint(x: rect.size.width / 2, y: -100))
        return path
    }
}

#Preview {
    Dibujos()
}
