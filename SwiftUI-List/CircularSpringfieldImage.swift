//
//  CircularSpringfieldImage.swift
//  SwiftUI-List
//
//  Created by Agustin Errecalde on 20/11/2019.
//  Copyright © 2019 nistsugaDev. All rights reserved.
//

import SwiftUI

struct CircularSpringfieldImage: View {
    var body: some View {
        Image("portadaSimpsons")
            .resizable()
            .aspectRatio(contentMode: .fit)
            .clipShape(Circle())
            .overlay(Circle().stroke(Color.black, lineWidth: 4))
            .shadow(radius: 15)
            
    }
}

struct CircularSpringfieldImage_Previews: PreviewProvider {
    static var previews: some View {
        CircularSpringfieldImage()
    }
}
