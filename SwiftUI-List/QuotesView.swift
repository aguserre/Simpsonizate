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
import Lottie



struct QuotesView: View {
    
    @ObservedObject var service = QuoteDAO()

    
    var body: some View {
        ZStack{
          List(self.service.quotes, id: \.quote) { item in
            ZStack(alignment: .leading){
                Rectangle()
                    .foregroundColor(Color(red: 247/256, green: 206/256, blue: 70/256))
                    .cornerRadius(10)
                    .shadow(color: .gray,radius: 5)
                        
                CardQuote(nameAPI: item.character, quote: item.quote, image: item.image)
            }.padding(.all, 5)
          }.navigationBarTitle(Text("Twittson"))
        }
    }
}


struct QuotesView_Previews: PreviewProvider {
    static var previews: some View {
        QuotesView()
    }
}
