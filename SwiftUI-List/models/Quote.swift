//
//  Quote.swift
//  SwiftUI-List
//
//  Created by Agustin Errecalde on 16/11/2019.
//  Copyright © 2019 nistsugaDev. All rights reserved.
//

import Foundation

struct Quotes: Identifiable {
    
    var id: Int
    var quote: String
    var character: String
    var image: String
    var characterDirection: String
    
    init(dictionary: [String: AnyObject]) {
        self.id = dictionary["id"] as? Int ?? 0
        self.quote = dictionary["quote"] as? String ?? "no name"
        self.character = dictionary["character"] as? String ?? "no name"
        self.image = dictionary["image"] as? String ?? "no name"
        self.characterDirection = dictionary["characterDirection"] as? String ?? "no name"
    
    }

}
