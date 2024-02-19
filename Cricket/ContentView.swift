//
//  ContentView.swift
//  Cricket
//
//  Created by kartik khorwal on 18/02/24.
//

import SwiftUI
import RealityKit
import RealityKitContent

struct ContentView: View {
    
    @Environment(\.openWindow) private var openWindow
    
    @State private var selection = 1
    
    var body: some View {
        VStack {
//            Model3D(named: "Scene", bundle: realityKitContentBundle)
//                .padding(.bottom, 50)

            TabView(selection: $selection){
                HStack{
                    VideoPlayer()
                    
                }.tabItem { Label("Home", systemImage: "house") }
                    .tag(1)
                
                Text("Matches")
                    .tabItem { Label("Matches", systemImage: "rectangle.on.rectangle") }
                    .tag(2)
                
                }
//
//            Button("Open Scoreboard") {
//                openWindow(id: "scoreboard")
//            }
//            
//            Button("Open Info panel") {
//                openWindow(id: "info")
//            }
//            
        }.ornament(visibility: .visible, attachmentAnchor:.scene(.topTrailing), contentAlignment: .trailing){
            
            HStack{
                Button("Scorecard", systemImage: "list.bullet.rectangle.portrait.fill"){
                    openWindow(id: "scoreboard")
                }
                
                Button("Info Panel", systemImage: "rectangle.tophalf.filled"){
                    openWindow(id: "info")
                }
                
            }.padding(.vertical, 12)
                .labelStyle(.iconOnly)
                .padding(.horizontal, 2)
            .glassBackgroundEffect()
            
        }
        
//        .ornament(visibility: .visible, attachmentAnchor: .scene(.bottomTrailing), contentAlignment: .top){
//            BowlingOrnament()
//                .padding(.horizontal, 20)
//                .padding(.vertical, 20)
//                .frame(width: 350, height: 200)
//                .glassBackgroundEffect()
//            
//        }.ornament(visibility: .visible, attachmentAnchor: .scene(.bottomLeading), contentAlignment: .top){
//            BattingOrnament()
//                .padding(.horizontal, 20)
//                .padding(.vertical, 20)
//                .frame(width: 350, height: 200)
//                .glassBackgroundEffect()
//            
//        }.ornament(visibility: .visible, attachmentAnchor: .scene(.bottom), contentAlignment: .top){
//            ScoreOrnament()
//                .padding(.horizontal, 20)
//                .padding(.vertical, 20)
//                .frame(width: 550, height: 200)
//                .glassBackgroundEffect()
//            
//        }
//        .ornament(visibility: .visible, attachmentAnchor: .scene(.bottom), contentAlignment: .top){
////            ScoreOrnament()
//           MatchInfoView()
//                .padding(.horizontal, 20)
//                .padding(.vertical, 20)
//                .frame(width: 1200, height: 200)
//                .glassBackgroundEffect()
//        }
        
    }
}

#Preview(windowStyle: .automatic) {
    ContentView()
}

