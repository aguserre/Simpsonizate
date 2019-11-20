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


struct CellRow: View {

    @ObservedObject var service = QuoteDAO()
        
    var body : some View {

        ScrollView(.horizontal, showsIndicators: false) {
            HStack (alignment: .top){
                ForEach(service.quotes, id: \.quote) { quote in
                    CardQuote(quote: quote.quote, character: quote.character, image: quote.image)
                        .padding(.trailing, 30)
                }
            }.frame(height: UIScreen.main.bounds.height)
        }
    }
}

struct CardQuote: View {
    
    var quote = ""
    var character = ""
    var image = ""
    
    var body : some View {
        
        ZStack (alignment: .leading) {
            
            VStack (alignment: .leading, spacing: 20) {
                Color(red: 247/256, green: 206/256, blue: 70/256)
                    .cornerRadius(20)
                    .shadow(radius: 10)
            }.frame(width: 300, height: 400)

            
            VStack(alignment: .leading) {
                WebImage(url: URL(string: image))
                .resizable()
            }.frame(width: 300, height: 400)
            
        }.frame(height: UIScreen.main.bounds.height)
            
    }
    
}

struct CellQuoteEmpty: View {
    
    var error = ""

    var body : some View {
        ZStack {
            
            HStack(alignment: .center) {
                Color(red: 247/256, green: 206/256, blue: 70/256)
                    .cornerRadius(20)
                    .shadow(radius: 10)
                
            }.frame(width: 300)
            HStack {
                Text(error).font(.subheadline)
            }.frame(width: 280, height: 200)
        }
        .frame(width: UIScreen.main.bounds.width, height: 200)
    }
}


struct CellRow_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}

