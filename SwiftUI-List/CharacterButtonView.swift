//
//  CharacterButtonView.swift
//  SwiftUI-List
//
//  Created by Agustin Errecalde on 20/11/2019.
//  Copyright © 2019 nistsugaDev. All rights reserved.
//

import SwiftUI

struct CharacterButtonView : View {
    var body : some View {

        HStack{
            Text("Character")
                .frame(width: 100, height: 50)
                .foregroundColor(.white)
                .font(.headline)
                .background(Color.blue)
                .cornerRadius(10)
        }
    }
}

struct CharacterButtonView_Previews: PreviewProvider {
    static var previews: some View {
        CharacterButtonView()
    }
}
