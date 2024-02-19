//
//  CricketApp.swift
//  Cricket
//
//  Created by kartik khorwal on 18/02/24.
//

import SwiftUI


@main
struct CricketApp: App {
    
    var body: some Scene {

        WindowGroup() {
            NavigationStack{
                ContentView()
            }
        }
        
        WindowGroup("Scoreboard", id: "scoreboard") {
            ScoreboardView()
        }.defaultSize(width:540, height: 820)
        
        WindowGroup("Info Panel", id: "info") {
            MatchInfoView()
                .padding(.horizontal, 20)
                .padding(.vertical, 20)
                .glassBackgroundEffect()
        }.defaultSize(width: 1200, height: 200)
    
    }
}

