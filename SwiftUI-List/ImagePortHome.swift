//
//  ImagePortHome.swift
//  SwiftUI-List
//
//  Created by Agustin Errecalde on 20/11/2019.
//  Copyright © 2019 nistsugaDev. All rights reserved.
//

import SwiftUI

struct PortImageView: View {
    var body: some View {
        Image("springfield")
            .resizable()
            .aspectRatio(contentMode: .fill)
            .overlay(Rectangle().stroke(Color.black, lineWidth: 4))
            .shadow(radius: 15)
    }
}

struct PortImageView_Previews: PreviewProvider {
    static var previews: some View {
        PortImageView()
    }
}
