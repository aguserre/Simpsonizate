//
//  QuotesDAO.swift
//  SwiftUI-List
//
//  Created by Agustin Errecalde on 16/11/2019.
//  Copyright © 2019 nistsugaDev. All rights reserved.
//

import SwiftUI
import Alamofire
import SwiftyJSON

class QuoteDAO: ObservableObject {
    
    @Published var quotes = [Quotes]()
    init() {
        
        Alamofire.request("https://thesimpsonsquoteapi.glitch.me/quotes?count=20").responseData { (data) in
            
            let json = try! JSON(data: data.data!)
            
            for i in json {
                //i.0 devuelve la posicion de los elementos que hay en en array
                //i.1 devuelve el contenido en formato JSON de cada elemento del array
                //print(i.1)
                self.quotes.append(Quotes(id: i.0,
                                          quote: i.1["quote"].stringValue ,
                                          character: i.1["character"].stringValue,
                                          image: i.1["image"].stringValue,
                                          characterDirection: i.1["characterDirection"].stringValue))

            }
        }
    }
}
