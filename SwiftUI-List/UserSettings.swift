//
//  UserSettings.swift
//  SwiftUI-List
//
//  Created by Agustin Errecalde on 10/12/2019.
//  Copyright © 2019 nistsugaDev. All rights reserved.
//

import SwiftUI

struct dataset: Identifiable {
    var id = ""
    var name = ""
    var lastName = ""
    var email = ""
    var nickname = ""
}


struct UserSettings: View {
    
    @EnvironmentObject var session: SessionStore
    @State var name = ""
    @State var email = ""
    @State var displayName = ""
    
    var body: some View {
        VStack{
            Text(session.session?.email ?? "User")
            Text(session.session?.name ?? "No name")
            
            TextField("username", text: $displayName)

        }

    }
}

struct UserSettings_Previews: PreviewProvider {
    static var previews: some View {
        UserSettings()
    }
}
