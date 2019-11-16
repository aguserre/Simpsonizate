//
//  LoginViewController.swift
//  SwiftUI-List
//
//  Created by Agustin Errecalde on 16/11/2019.
//  Copyright © 2019 nistsugaDev. All rights reserved.
//

import SwiftUI
import SDWebImageSwiftUI
import Alamofire
import SwiftyJSON

struct QuotesView: View {
    
    @ObservedObject var service = QuoteDAO()
    
    var body: some View {
            List(service.quotes){ i in
                cell(quote: i.quote, character: i.character, image: i.image)
            }
    }
}

struct cell: View {
    
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

struct QuotesView_Previews: PreviewProvider {
    static var previews: some View {
        QuotesView()
    }
}
