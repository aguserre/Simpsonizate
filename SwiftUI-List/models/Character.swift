//
//  SimpsonCharacter.swift
//  SwiftUI-List
//
//  Created by Agustin Errecalde on 16/11/2019.
//  Copyright © 2019 nistsugaDev. All rights reserved.
//

import SwiftUI

struct Character: Hashable, Codable, Identifiable {
    
    var id: Int
    var name: String
    var age: String
    var family: Family
    var shortDescription: String
    var biography: String
    var image: String
    
    
    enum Family: String, CaseIterable, Codable, Hashable {
        case simpson = "Simpsons"
        case flander = "Flanders"
    }
}
