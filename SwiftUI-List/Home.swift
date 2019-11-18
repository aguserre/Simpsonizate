//
//  ContentView.swift
//  SwiftUI-List
//
//  Created by Agustin Errecalde on 16/11/2019.
//  Copyright © 2019 nistsugaDev. All rights reserved.
//

import SwiftUI

struct HomeView: View {
    

    var body: some View {
        NavigationView {
            
            ZStack{
                Color.yellow
                HStack {
                    NavigationLink(destination: QuotesView()) {
                    Text("quotes")
                    }
                    
                    NavigationLink(destination: SimpsonList()) {
                    Text("characters")
                    }
                }
            }
            .edgesIgnoringSafeArea(.all)
            .navigationBarTitle("")
        }
    }
    
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}


