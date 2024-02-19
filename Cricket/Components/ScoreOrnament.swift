//
//  ScoreOrnament.swift
//  Cricket
//
//  Created by kartik khorwal on 19/02/24.
//

import SwiftUI

struct ScoreOrnament: View {
    var body: some View {
        VStack{
            HStack{
                HStack(spacing: 12){
                    AsyncImage(url: URL(string: "https://eiwdbderglafpgouuicm.supabase.co/storage/v1/object/sign/files/india.png?token=eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1cmwiOiJmaWxlcy9pbmRpYS5wbmciLCJpYXQiOjE3MDgzMjE5MTEsImV4cCI6MTczOTg1NzkxMX0.PyH2P6gveFJca4tnnpL_8VAG28uHV4RUdq_YgGKGQcA&t=2024-02-19T05%3A51%3A51.858Z")){ image in
                        image.resizable()
                            .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
                    } placeholder: {
                        ProgressView()
                    }
                    .frame(width: 40, height: 40)
                    .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                    
                    Text("India")
                }
                
                Spacer()
                
                Text("VS")
                    .opacity(0.6)
                
                Spacer()
                
                HStack(spacing:12){
                    Text("England")
                    
                    AsyncImage(url: URL(string: "https://eiwdbderglafpgouuicm.supabase.co/storage/v1/object/sign/files/england.png?token=eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1cmwiOiJmaWxlcy9lbmdsYW5kLnBuZyIsImlhdCI6MTcwODMyMTkzMSwiZXhwIjoxNzM5ODU3OTMxfQ.W7srFwhMI6PIOxhGIexvZqKSTxoHVGLbvt12DAoyAKs&t=2024-02-19T05%3A52%3A11.343Z")){ image in
                        image.resizable()
                            .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
                    } placeholder: {
                        ProgressView()
                    }
                    .frame(width: 40, height: 40)
                    .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                }
            }
            
            HStack(spacing: 12){
                Text("254-3")
                    .font(.extraLargeTitle)
                
                Text("(36.2)")
                    .font(.largeTitle)
                    .opacity(0.6)
            }
            
            Text("")
            Text("ENG choose to bat first")
                .font(.title3)
                .opacity(0.6)
        }
        
    }
}

#Preview {
    ContentView()
}
