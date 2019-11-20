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
       
        HStack() {
            if service.error == nil {
                CellRow()
            }else{
                CellQuoteEmpty(error: service.error!)
            }
        }
        .offset(y: -145)
        .navigationBarTitle(Text("Quotes"))
    }
}


struct QuotesView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
