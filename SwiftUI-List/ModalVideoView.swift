//
//  ModalVideoView.swift
//  SwiftUI-List
//
//  Created by Agustin Errecalde on 19/11/2019.
//  Copyright © 2019 nistsugaDev. All rights reserved.
//

import SwiftUI
import Lottie


struct ModalVideo: View {
    
    let videos: [Video] = load("videoList.json")
    
    var randomNum: Int {
        Int.random(in: 0..<videos.count)
    }
    
    var body: some View {
        
        ZStack{
            Color.yellow
                .edgesIgnoringSafeArea(.all)
            VStack{
                
                Text(videos[randomNum].title)
                    .font(.title)
                    .foregroundColor(.black)
                PlayerVideoView(videoID: videos[randomNum].videoId)
                    .padding(.bottom, 20)
                Text("Rated")
                    .font(.subheadline)
                    .foregroundColor(.black)
                HStack{
                    Text("")
                }
                
                Spacer()
            }
        
        }.navigationBarTitle(Text("Videos"))
        
        
    }


}


struct ModalVideo_Previews: PreviewProvider {
    static var previews: some View {
        ModalVideo()
    }
}
