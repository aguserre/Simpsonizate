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
        ZStack {
            Color.yellow
            VStack{
                WebView(url: "VHdcG40mt2w")

                    .frame(width: UIScreen.main.bounds.width-10, height: 220, alignment: .center)
                    .cornerRadius(10)
                    .shadow(radius: 10)
                
            }.offset(y: -180)
            
            
        }.edgesIgnoringSafeArea(.all)

    }
}


struct PlayerVideoView_Previews: PreviewProvider {
    static var previews: some View {
        PlayerVideoView()
    }
}
