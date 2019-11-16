//
//  PortImage.swift
//  SwiftUI-List
//
//  Created by Agustin Errecalde on 16/11/2019.
//  Copyright © 2019 nistsugaDev. All rights reserved.
//

import Foundation
import SwiftUI

struct PortImage: View {
    var body: some View {
        VStack{
            Image("portadaSimpsons")
               .resizable()
               .scaledToFill()
               .frame(height: 250)
               .edgesIgnoringSafeArea(.top)
            
        }
            
    }
    
}
