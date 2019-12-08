//
//  LoginView.swift
//  SwiftUI-List
//
//  Created by Agustin Errecalde on 08/12/2019.
//  Copyright © 2019 nistsugaDev. All rights reserved.
//

import SwiftUI

struct LoginView: View {
    
    @EnvironmentObject var session: SessionStore
    
    func getUser(){
        session.listen()
    }
    
    var body: some View {
        Group {
            if (session.session != nil) {
                HomeView()
            } else {
                AuthView()
            }
        }.onAppear(perform: getUser)
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
