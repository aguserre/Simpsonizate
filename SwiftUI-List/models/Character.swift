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
    var dir: String
    var biography: String
    var hobbie: String
    var job: String
    var birthday: String
    var childrens: String
    var image: String
    
    
    enum Family: String, CaseIterable, Codable, Hashable {
        case simpson = "Simpsons"
        case flander = "Flanders"
    }
}
