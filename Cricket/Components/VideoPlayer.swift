//
//  VideoPlayer.swift
//  Cricket
//
//  Created by kartik khorwal on 19/02/24.
//

import SwiftUI
import AVKit

struct VideoPlayer: View {
    
    let player = AVPlayer(url: URL(string: "https://eiwdbderglafpgouuicm.supabase.co/storage/v1/object/sign/files/match-clip.mp4?token=eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1cmwiOiJmaWxlcy9tYXRjaC1jbGlwLm1wNCIsImlhdCI6MTcwODM2MDI3MSwiZXhwIjoxNzM5ODk2MjcxfQ.cPnMj0Jf1snNyyG2dhymD5tYF6i9RGclkPe9gxeV-1o&t=2024-02-19T16%3A31%3A11.521Z")!)
    
    
    var body: some View {
        PlayerView(player: player)
            .aspectRatio(contentMode: .fill)
    }
}

struct PlayerView: UIViewControllerRepresentable {
  typealias UIViewControllerType = AVPlayerViewController

  let player: AVPlayer

  func makeUIViewController(context: Context) -> AVPlayerViewController {
    let controller = AVPlayerViewController()
    controller.player = player
    return controller
  }

  func updateUIViewController(_ uiViewController: AVPlayerViewController, context: Context) {

  }
}

#Preview {
    ContentView()
}

