//
//  LoginView.swift
//  SwiftUI-List
//
//  Created by Agustin Errecalde on 08/12/2019.
//  Copyright © 2019 nistsugaDev. All rights reserved.
//

import SwiftUI

struct LoginView: View {
    
    @State var showSplash = true
    @EnvironmentObject var session: SessionStore
    func getUser(){
        session.listen()
    }
    
    var body: some View {
        
        ZStack {
            Group {
                if (session.session != nil) {
                    HomeView()
                } else {
                    AuthView()
                }
            }.onAppear(perform: getUser)

            LaunchScreenCustom()
                .opacity(showSplash ? 1 : 0)
                .onAppear(){
                    DispatchQueue.main.asyncAfter(deadline: .now() + 4) {
                      withAnimation() {
                        self.showSplash = false
                      }
                    }
                }
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        AuthView()
    }
}
