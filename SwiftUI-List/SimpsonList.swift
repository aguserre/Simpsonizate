//
//  SwiftUIView.swift
//  SwiftUI-List
//
//  Created by Agustin Errecalde on 17/11/2019.
//  Copyright © 2019 nistsugaDev. All rights reserved.
//

import SwiftUI

struct SimpsonList: View {
    
    let families: [Character] = load("characters.json")
    
    var body: some View {
            List {
                ForEach(families, id: \.name) { character in
                    CharacterView(simpson: character)
                }
            }
            .navigationBarTitle(Text("Characters"))
    }
}

struct SimpsonList_Previews: PreviewProvider {
    static var previews: some View {
        SimpsonList()
    }
}
