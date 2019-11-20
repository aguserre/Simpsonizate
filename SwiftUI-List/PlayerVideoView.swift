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


