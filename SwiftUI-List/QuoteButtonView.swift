//
//  QuoteButtonView.swift
//  SwiftUI-List
//
//  Created by Agustin Errecalde on 20/11/2019.
//  Copyright © 2019 nistsugaDev. All rights reserved.
//

import SwiftUI

struct QuoteButtonView : View {
    var body : some View {

        HStack{
            Text("Quotes")
                .frame(width: 95, height: 50)
                .foregroundColor(.white)
                .font(.headline)
                .background(Color.blue)
                .cornerRadius(10)
            
        }
    }
}

struct QuoteButtonView_Previews: PreviewProvider {
    static var previews: some View {
        QuoteButtonView()
    }
}
