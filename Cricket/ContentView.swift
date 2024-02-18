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
    
    var body: some View {
        VStack {
//            Model3D(named: "Scene", bundle: realityKitContentBundle)
//                .padding(.bottom, 50)

            Button("Open Scoreboard") {
                openWindow(id: "scoreboard")
            }
            
        }
        .padding()
    }
}

#Preview(windowStyle: .automatic) {
    ContentView()
}

