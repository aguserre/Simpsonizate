//
//  TheSimpsonsImage.swift
//  SwiftUI-List
//
//  Created by Agustin Errecalde on 20/11/2019.
//  Copyright © 2019 nistsugaDev. All rights reserved.
//

import SwiftUI

struct TheSimpsonsImage: View {
    var body: some View {
        Image("theSimpsons")
            .resizable()
            .aspectRatio(contentMode: .fill)
    }
}

struct TheSimpsonsImage_Previews: PreviewProvider {
    static var previews: some View {
        TheSimpsonsImage()
    }
}
