//
//  PlayerVideoView.swift
//  SwiftUI-List
//
//  Created by Agustin Errecalde on 19/11/2019.
//  Copyright © 2019 nistsugaDev. All rights reserved.
//

import SwiftUI

struct PlayerVideoView: View {
    
    var videoID:String
    var body: some View {

        ZStack {
            Color.yellow
            
            VStack{
                WebView(url: videoID)
                .frame(width: UIScreen.main.bounds.width-10, height: 220, alignment: .center)
                .cornerRadius(10)
                .shadow(radius: 10)
                
            }.offset(y: -180)
        }.edgesIgnoringSafeArea(.all)
        
    }
}
