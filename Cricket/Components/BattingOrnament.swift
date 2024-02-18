//
//  BattingOrnament.swift
//  Cricket
//
//  Created by kartik khorwal on 18/02/24.
//

import SwiftUI

struct BattingOrnament: View {
    var body: some View {
        VStack(alignment: .leading, spacing:12){
            HStack{
                Image(systemName: "figure.cricket")
                Text("Ind")
            }.opacity(0.6)
        
            VStack{
                HStack(spacing:12){
                    AsyncImage(url: URL(string: "https://eiwdbderglafpgouuicm.supabase.co/storage/v1/object/sign/files/virat.jpg?token=eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1cmwiOiJmaWxlcy92aXJhdC5qcGciLCJpYXQiOjE3MDgyNzk2MTQsImV4cCI6MTczOTgxNTYxNH0.pDNMLnHsLGOoT9oEGbSGyMFiatY5cbRfihgfSd2uiEg&t=2024-02-18T18%3A06%3A54.764Z")){ image in
                        image.resizable()
                    } placeholder: {
                        ProgressView()
                    }
                    .frame(width: 50, height: 50)
                    .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                    
                    
                    Text("Virat Kohli")
                        .font(.title2)
                    
                    Spacer()
                    
                    Text("89 (129)")
                        .opacity(0.7)
                }
                
                HStack(spacing:12){
                    AsyncImage(url: URL(string: "https://eiwdbderglafpgouuicm.supabase.co/storage/v1/object/sign/files/rohit.jpg?token=eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1cmwiOiJmaWxlcy9yb2hpdC5qcGciLCJpYXQiOjE3MDgyNzk4MTQsImV4cCI6MTczOTgxNTgxNH0.si3yikkg64yVHcfEFGTbVsya-V2qSUtRkvVHyb4iyIc&t=2024-02-18T18%3A10%3A14.283Z")){ image in
                        image.resizable()
                    } placeholder: {
                        ProgressView()
                    }
                    .frame(width: 50, height: 50)
                    .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                    
                    
                    Text("Rohit Sharma")
                        .font(.title2)
//                        .padding(.trailing, 60)
                    
                    Spacer()
                    
                    Text("131 (196)")
                        .opacity(0.7)
                }
            }

        
        }
    }
}

#Preview {
    ContentView()
}
