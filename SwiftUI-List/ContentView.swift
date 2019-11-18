//
//  ContentView.swift
//  SwiftUI-List
//
//  Created by Agustin Errecalde on 16/11/2019.
//  Copyright © 2019 nistsugaDev. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    

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
            .navigationBarTitle("Welcome")
        }
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


