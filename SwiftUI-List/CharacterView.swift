//
//  SimpsonDetailView.swift
//  SwiftUI-List
//
//  Created by Agustin Errecalde on 17/11/2019.
//  Copyright © 2019 nistsugaDev. All rights reserved.
//

import SwiftUI

struct CharacterView: View {
    
    var simpson: Character
    
    var body: some View {
        
            
        ZStack(alignment: .topLeading){
            NavigationLink(destination: CharacterDetailView(character: simpson)){
                Image(simpson.image)
                .resizable()
                .renderingMode(.original)
                .aspectRatio(contentMode: .fill)
                .frame(width: 350, height: 200)
                .cornerRadius(20)
                .shadow(radius: 10)
            }
                

                HStack{
                    VStack (alignment: .leading){
                        Text("\(simpson.name)"+" ("+"\(simpson.age)"+")")
                            .font(.headline)
                            .foregroundColor(.primary)

                    }
                    .padding(.leading)
                    .background(Color(.white))
                    .cornerRadius(10)
                }
            }
    }
}

struct CharacterView_Previews: PreviewProvider {
    static var previews: some View {
        CharacterView(simpson: characterData[0])
    }
}
