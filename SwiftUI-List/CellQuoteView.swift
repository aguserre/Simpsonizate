//
//  CellQuoteView.swift
//  SwiftUI-List
//
//  Created by Agustin Errecalde on 18/11/2019.
//  Copyright © 2019 nistsugaDev. All rights reserved.
//

import SwiftUI
import SDWebImageSwiftUI
import Alamofire
import SwiftyJSON

struct CellQuote: View {
    
    var quote = ""
    var character = ""
    var image = ""
    
    var body : some View {
        
        VStack {
            ZStack(alignment: .bottomLeading) {
                WebImage(url: URL(string: image))
                .aspectRatio(contentMode: .fit)
                .frame(width: 400, height: 380)
                .cornerRadius(20)
                .shadow(radius: 10)
                
                HStack {
                    Text(character).font(.largeTitle)
                }.frame(width: 400, height: 60, alignment: .leading)

            
            }
            HStack{
                Text(quote).font(.subheadline)
                .lineLimit(10)
                

            }
        }

        
    }
}
struct CellQuote_Previews: PreviewProvider {
    static var previews: some View {
        CellQuote(quote: characterData[0].biography, character: characterData[0].name, image: "https://cdn.glitch.com/3c3ffadc-3406-4440-bb95-d40ec8fcde72%2FComicBookGuy.png?1497567511970")
    }
}

