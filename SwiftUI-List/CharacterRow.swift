//
//  CharacterRow.swift
//  SwiftUI-List
//
//  Created by Agustin Errecalde on 17/11/2019.
//  Copyright © 2019 nistsugaDev. All rights reserved.
//

import SwiftUI

struct CharacterRow: View {
    
    var familyName: String
    var characters: [Character]
    
    var body: some View {
        VStack(alignment: .leading) {
            
            Text(familyName)
                .font(.title)
            
            ScrollView(.horizontal, showsIndicators: false ){
                HStack(alignment: .top) {
                    ForEach(characters, id: \.name) { character in
                            NavigationLink(destination: CharacterDetailView(character: character)) {
                                CharacterView(simpson: character)
                                .frame(width: 300)
                                .padding(.trailing, 30)
                        }
                                
                    }
                }
            }
        }
        
        
        
        
        
                
                
            
            
            
            
    
        
    }

    
}

struct CharacterRow_Previews: PreviewProvider {
    static var previews: some View {
        CharacterRow(familyName: "SIMPSONS", characters: characterData)
    }
}
