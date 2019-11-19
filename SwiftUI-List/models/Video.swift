//
//  Video.swift
//  SwiftUI-List
//
//  Created by Agustin Errecalde on 18/11/2019.
//  Copyright © 2019 nistsugaDev. All rights reserved.
//

import SwiftUI

struct Video: Hashable, Codable, Identifiable {
    
    var id: Int
    var temporada: String
    var links: String

    
    
    enum Family: String, CaseIterable, Codable, Hashable {
        case simpson = "Simpsons"
        case flander = "Flanders"
    }
}
