//
//  ModalVideoView.swift
//  SwiftUI-List
//
//  Created by Agustin Errecalde on 19/11/2019.
//  Copyright © 2019 nistsugaDev. All rights reserved.
//

import SwiftUI

struct ModalVideo: View {
    
    let videos: [Video] = load("videoList.json")
    @Binding var isPresented: Bool
    
    var body: some View {
        
        PlayerVideoView(videoID: videos[Int.random(in: 0..<videos.count)].videoId)
        
    }
}


