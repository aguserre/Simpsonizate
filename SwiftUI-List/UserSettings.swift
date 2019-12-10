//
//  UserSettings.swift
//  SwiftUI-List
//
//  Created by Agustin Errecalde on 10/12/2019.
//  Copyright © 2019 nistsugaDev. All rights reserved.
//

import SwiftUI

struct UserSettings: View {
    
    @EnvironmentObject var session: SessionStore
    
    var body: some View {

        Text(session.session?.email ?? "User")

    }
}

struct UserSettings_Previews: PreviewProvider {
    static var previews: some View {
        UserSettings()
    }
}
