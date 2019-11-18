//
//  CharacterDetailView.swift
//  SwiftUI-List
//
//  Created by Agustin Errecalde on 17/11/2019.
//  Copyright © 2019 nistsugaDev. All rights reserved.
//

import SwiftUI

struct CharacterDetailView: View {
    
    var character: SimpsonCharacter
    
    var body: some View {
        List {
            ZStack (alignment: .bottom){
                Image(character.image)
                .resizable()
                .aspectRatio(contentMode: .fit)
                Rectangle()
                .frame(height: 80)
                .opacity(0.25)
                .blur(radius: 10)
                
                HStack{
                    VStack(alignment: .leading, spacing: 8){
                        Text(character.name)
                            .foregroundColor(.white)
                            .font(.largeTitle)
                    }
                    .padding(.leading)
                    .padding(.bottom)
                    Spacer()
                }
            }
            .listRowInsets(EdgeInsets())
            VStack(alignment: .leading) {
                Text(character.biography)
                .foregroundColor(.primary)
                .font(.body)
                .lineLimit(nil)
                .lineSpacing(12)
                
                HStack {
                    Spacer()
                    ViewEpisodeButton()
                    Spacer()
                }.padding(.top, 50)
                
            }
            
        }
        
    }
}

struct ViewEpisodeButton : View {
    var body : some View {
        NavigationLink(destination: QuotesView()) {
            Text("Go Episode")
            
        }
        .frame(width: 200, height: 50)
        .foregroundColor(.white)
        .font(.headline)
        .background(Color.blue)
        .cornerRadius(10)
    }
}

struct CharacterDetailView_Previews: PreviewProvider {
    static var previews: some View {
        CharacterDetailView(character: simpsonData[1])
    }
}
