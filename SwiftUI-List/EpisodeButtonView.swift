//
//  EpisodeButtonView.swift
//  SwiftUI-List
//
//  Created by Agustin Errecalde on 19/11/2019.
//  Copyright © 2019 nistsugaDev. All rights reserved.
//

import SwiftUI

struct ViewEpisodeButton : View {
    
    @State var isPresentingAddModal = false

    
    var body : some View {
        Button(
            action: {
               self.isPresentingAddModal.toggle()
            },
            label: {
                HStack{
                    ZStack(alignment: .trailing) {
                        Text("Random Episode")
                            .frame(width: 200, height: 50)
                            .foregroundColor(.white)
                            .font(.headline)
                            .background(Color.blue)
                            .cornerRadius(10)
                            
                        Image(systemName: "play.fill")
                            .resizable()
                            .frame(width: 20, height: 20)
                            .foregroundColor(.yellow)
                            .padding(.trailing, 5)
                        
                    }
                
                }
        })
        .sheet(isPresented: $isPresentingAddModal, content: {
                ModalVideo(isPresented: self.$isPresentingAddModal)
        })

    }
        
}

struct ViewEpisodeButton_Previews: PreviewProvider {
    static var previews: some View {
        ViewEpisodeButton()
    }
}
