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
        ZStack{
            Color.yellow
            List(service.quotes){ i in
                CellQuote(quote: i.quote, character: i.character, image: i.image)
            }
        }.navigationBarTitle("Quotes", displayMode: .inline)
    }
}



struct QuotesView_Previews: PreviewProvider {
    static var previews: some View {
        QuotesView()
    }
}
