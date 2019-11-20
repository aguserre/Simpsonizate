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
            
            Section(header: Text("Informacion").font(.headline)) {
                HStack(alignment: .center) {
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
                .frame(width: 380)
                .background(Color(red: 247/256, green: 206/256, blue: 70/256))
                .cornerRadius(25)
                .shadow(radius: 10)
            }
            .listRowBackground(Color(.clear))
            Section(header: Text("Biografia").font(.headline)) {
                
                VStack {
                    Text(character.biography)
                        .foregroundColor(.primary)
                        .font(.body)
                        .lineLimit(nil)
                        .lineSpacing(5)
                        .padding()
                       
                        .background(Color(red: 247/256, green: 206/256, blue: 70/256))
                }
                .cornerRadius(25)
                .shadow(radius: 10)
            }
            .listRowBackground(Color(.clear))
        }
        .edgesIgnoringSafeArea(.all)
    }
}
struct CharacterDetailView_Previews: PreviewProvider {
    static var previews: some View {
        CharacterDetailView(character: characterData[0])
    }
}
