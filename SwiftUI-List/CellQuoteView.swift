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
        HStack {
            WebImage(url: URL(string: image)).resizable().frame(width: 50, height: 50)
            VStack (alignment: .leading) {
                Text(character).font(.headline)
                Text(quote).font(.subheadline).lineLimit(nil)
            }
        }
    }
}
