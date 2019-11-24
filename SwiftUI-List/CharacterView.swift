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
                Rectangle()
                .frame(width: 350, height: 30, alignment: .topLeading)
                .opacity(0.6)
                .blur(radius: 10)

                HStack{
                    VStack (alignment: .leading){
                        Text("\(simpson.name)"+" ("+"\(simpson.age)"+")")
                            .font(.headline)
                            .foregroundColor(.black)

                    }
                    .padding(.leading)
                    
                    .cornerRadius(10)
                }
            }
    }
}


