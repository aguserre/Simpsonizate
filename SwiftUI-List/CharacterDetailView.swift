//
//  CharacterDetailView.swift
//  SwiftUI-List
//
//  Created by Agustin Errecalde on 17/11/2019.
//  Copyright © 2019 nistsugaDev. All rights reserved.
//

import SwiftUI

struct CharacterDetailView: View {
    
    var character: Character
    
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
            .disabled(true)
            .listRowInsets(EdgeInsets())
            
            Section(header: Text("Informacion")){
                HStack {
                    VStack (alignment: .leading){
                        Text("Age: "+"\(character.age)")
                        Text("Hobbie: "+"\(character.hobbie)")
                        Text("Job: "+"\(character.job)")

                    }.padding()
                    VStack (alignment: .leading){
                        Text("Birthday: "+"\(character.birthday)")
                        Text("Childrens: "+"\(character.childrens)")
                        Text("Dir: "+"\(character.dir)")
                    }.padding()
                }
            }
            
            Section(header: Text("Biografia")){
                List {
                    VStack(alignment: .leading) {
                        Text(character.biography)
                        .foregroundColor(.primary)
                        .font(.body)
                        .lineLimit(nil)
                        .lineSpacing(5)
                    }
                    .disabled(true)
                }
                .frame(height: 400)
            }
            Section() {
                HStack {
                    
                    ViewEpisodeButton()
                    
                }.frame(width: 380, height: 50, alignment: .center)
            }
        }
        .edgesIgnoringSafeArea(.top)
    }
}
struct CharacterDetailView_Previews: PreviewProvider {
    static var previews: some View {
        CharacterDetailView(character: characterData[1])
    }
}
