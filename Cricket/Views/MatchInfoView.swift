//
//  MatchInfoView.swift
//  Cricket
//
//  Created by kartik khorwal on 19/02/24.
//

import SwiftUI

struct MatchInfoView: View {
    var body: some View {
        HStack{
            BattingOrnament()
                .frame(maxWidth: 300)
            
            Spacer()
            Divider()
                .overlay(.white.opacity(0.4))
            Spacer()
            
            ScoreOrnament()
                .frame(maxWidth: 350)
            
            Spacer()
            Divider()
                .overlay(.white.opacity(0.4))
            Spacer()
            
            BowlingOrnament()
                .frame(maxWidth: 300)
        }
    }
}

#Preview {
    ContentView()
}
