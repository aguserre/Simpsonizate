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
       
        List(service.quotes, id: \.quote) { item in
            CardQuote(nameAPI: item.character, quote: item.quote, image: item.image)
        }.navigationBarTitle(Text("Twittson"))
    }
}


struct QuotesView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
