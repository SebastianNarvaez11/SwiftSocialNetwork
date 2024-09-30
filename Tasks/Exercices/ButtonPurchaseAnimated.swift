//
//  ButtonPurchaseAnimated.swift
//  Tasks
//
//  Created by Sebastian on 1/08/24.
//

import SwiftUI

struct ButtonPurchaseAnimated: View {
    
    @State var isProcessing:Bool = false
    @State var isComplete:Bool = false
    
    var body: some View {
        
        
        ZStack{
            RoundedRectangle(cornerRadius: 25.0)
                .frame(width: (!isProcessing && !isComplete) ? 100 : 200, height: 50)
                .foregroundStyle(isComplete ? .green : .blue)
                .overlay(
                    VStack{
                        if(isProcessing || isComplete){
                            
                            Text(isProcessing ? "Procesando..." : "Completado")
                                .bold()
                                .foregroundStyle(.white)
                        }else{
                            Text("Comprar")
                                .bold()
                                .foregroundStyle(.white)
                                .transition(.asymmetric(insertion: .scale(scale: 0, anchor: .top), removal: .opacity))
                        }
                    }
                ).onTapGesture {
                    startPurchase()
                }.animation(.bouncy, value: [isComplete, isProcessing])
            
            
        }
        
        
    }
    
    
    func startPurchase () {
        isProcessing = true
        
        DispatchQueue.main.asyncAfter(deadline: .now()+5, execute: {
            isProcessing = false
            isComplete = true
            endPurchase()
        })
    }
    
    func endPurchase () {
        DispatchQueue.main.asyncAfter(deadline: .now()+3, execute: {
            isComplete = false
        })
    }
}

#Preview {
    ButtonPurchaseAnimated()
}
