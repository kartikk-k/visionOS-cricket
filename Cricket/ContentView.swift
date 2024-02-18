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
                Text("Home")
                    .tabItem { Label("Home", systemImage: "house") }
                    .tag(1)
                
                Text("Matches")
                    .tabItem { Label("Matches", systemImage: "rectangle.on.rectangle") }
                    .tag(2)
                
                }
            
            Button("Open Scoreboard") {
                openWindow(id: "scoreboard")
            }
            
        }.padding()
            .ornament(visibility: .visible, attachmentAnchor: .scene(.bottomTrailing), contentAlignment: .top){
                BowlingOrnament()
                    .padding(.horizontal, 20)
                    .padding(.vertical, 20)
                    .glassBackgroundEffect()
            }
    }
}

#Preview(windowStyle: .automatic) {
    ContentView()
}

