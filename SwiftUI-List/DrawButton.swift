//
//  DrawButton.swift
//  SwiftUI-List
//
//  Created by Agustin Errecalde on 27/11/2019.
//  Copyright © 2019 nistsugaDev. All rights reserved.
//

import Foundation
import SwiftUI

struct DrawButton : View {
    var body : some View {

        HStack{
            Text("Draw your simpson")
                .frame(width: 200, height: 50)
                .foregroundColor(.white)
                .font(.headline)
                .background(Color.blue)
                .cornerRadius(10)
            
        }
    }
}

struct DrawButton_Previews: PreviewProvider {
    static var previews: some View {
        DrawButton()
    }
}
