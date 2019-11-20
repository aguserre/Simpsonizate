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
        VStack{
            ScrollView(.horizontal, showsIndicators: false) {
                HStack{
                    ForEach(service.quotes, id: \.id) { quote in
                        CellQuote(quote: quote.quote, character: quote.character, image: quote.image)
                        .frame(width: 300,height: 300)
                        .padding(.trailing, 30)
                    }
                }
            }
        }
    }
}


struct QuotesView_Previews: PreviewProvider {
    static var previews: some View {
        QuotesView()
    }
}
