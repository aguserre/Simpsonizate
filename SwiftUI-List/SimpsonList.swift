//
//  SwiftUIView.swift
//  SwiftUI-List
//
//  Created by Agustin Errecalde on 17/11/2019.
//  Copyright © 2019 nistsugaDev. All rights reserved.
//

import SwiftUI

struct SimpsonList: View {
    
    var families: [String:[SimpsonCharacter]]{
        .init(grouping: simpsonData,
              by: {$0.family.rawValue})
    }
    
    var body: some View {
        
        List(families.keys.sorted(), id: \String.self) { key in
            CharacterRow(familyName: "\(key) family".uppercased(), characters: self.families[key]!)
            .frame(height: 320)
            .padding(.top)
            .padding(.bottom)
        }.navigationBarTitle("Characters", displayMode: .inline)
        
    }
}

struct SimpsonList_Previews: PreviewProvider {
    static var previews: some View {
        SimpsonList()
    }
}
