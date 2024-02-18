//
//  BowlingOrnament.swift
//  Cricket
//
//  Created by kartik khorwal on 18/02/24.
//

import SwiftUI

struct BowlingOrnament: View {
    
    var body: some View {
        VStack(alignment: .leading, spacing:12){
            HStack{
                Image(systemName: "cricket.ball.fill")
                Text("Eng")
            }.opacity(0.6)
        
            HStack(spacing:8){
                Circle()
                    .fill(.white)
                    .frame( width: 10,height: 10)
                    
                Text("Ben Stokes")
                    .font(.title2)
                
                Spacer()
                
                Text("2/42 (9.5)")
                    .opacity(0.7)
            }
            
            HStack(spacing: 18){
                Delivery(type: .dot)
                Delivery(type: .number(1))
                Delivery(type: .number(1))
                Delivery(type: .dot)
                Delivery(type: .four)
                Delivery(type: .pending)
            }
        
        }
    }
}

#Preview {
    ContentView()
}

enum DeliveryOutcome {
    case out
    case dot
    
    case number(Int)
    case four
    case six
    
    case pending
}

@ViewBuilder
func Delivery(type:DeliveryOutcome)->some View{
    ZStack{
        Circle()
            .frame(width: 30, height: 30)
            .opacity(0.2)
        
        switch type{
        case .dot:
            Circle()
                .frame(width: 15, height: 15)
                .opacity(0.6)
        case .out:
            Circle()
                .frame(width: 30, height: 30)
                .background(.red.opacity(0.4))
            
        case .number(let value):
            Text("\(value)")
            
        case .four:
            Text("4")
            
        case .six:
            Text("6")
            
        case .pending:
            Circle()
                .opacity(0)
        }
    }
}
