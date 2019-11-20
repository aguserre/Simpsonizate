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
    @Published var error: String?
    var i: Int = 0
    init() {
        
        Alamofire.request("https://thesimpsonsquoteapi.glitch.me/quotes?count=10").responseJSON { (response) in
            
                if let rootDictionary = response.value as? [[String:AnyObject]] {
                    for aDictionary in rootDictionary {
                        let quoteObject = Quotes(dictionary: aDictionary)
                        
                        //utilizo este if para agregar 5 objetos en cada array, y asi mostrar dos filas en la QuotesView
                            self.quotes.append(quoteObject)
                    }
                    
                } else {
                    if let data = response.data {
                        if let json = String(data: data, encoding: String.Encoding.utf8){
                            self.error = json
                            print("Failure response: \(String(describing: json))")
                        }
                    }
                }
            }
    }
}
