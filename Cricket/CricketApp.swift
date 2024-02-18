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
            .windowResizabilityContentSize()
        
        
        
    }
}

extension Scene {
    func windowResizabilityContentSize() -> some Scene {
        if #available(macOS 13.0, *) {
            return windowResizability(.contentMinSize)
        } else {
            return self
        }
    }
}
