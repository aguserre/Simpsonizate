//
//  PlayerVideoView.swift
//  SwiftUI-List
//
//  Created by Agustin Errecalde on 19/11/2019.
//  Copyright © 2019 nistsugaDev. All rights reserved.
//

import SwiftUI
import AVKit

struct PlayerVideoView: View {
    var body: some View {
        
        VStack{
            
            player().frame(height: UIScreen.main.bounds.height / 3)
            Spacer()
            
        }
        
    }
}

struct PlayerVideoView_Previews: PreviewProvider {
    static var previews: some View {
        PlayerVideoView()
    }
}

struct player: UIViewControllerRepresentable {
    
    func makeUIViewController(context: UIViewControllerRepresentableContext<player>) -> AVPlayerViewController {
        let controller = AVPlayerViewController()
        let url = "https://youtu.be/wbFuAs_UNYg"
        let player1 = AVPlayer(url: URL(string: url)!)
        controller.player = player1
        return controller
    }
    
    func updateUIViewController(_ uiViewController: AVPlayerViewController, context: UIViewControllerRepresentableContext<player>) {
        print("")
    }
    
    
}
