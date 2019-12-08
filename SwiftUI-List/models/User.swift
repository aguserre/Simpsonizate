//
//  User.swift
//  SwiftUI-List
//
//  Created by Agustin Errecalde on 08/12/2019.
//  Copyright © 2019 nistsugaDev. All rights reserved.
//

import Foundation

struct User {
    var uid: String
    var email: String
    
    init(uid: String, email: String) {
        self.uid = uid
        self.email = email
    }
}
