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
                HStack{
                    PortImageView()
                        .edgesIgnoringSafeArea(.top)
                        .offset(y: -250)
                }.frame(height: 200)
                    
                CircularSpringfieldImage()
                    .frame(height: 250)
                    .offset(y: -250)
                    .padding(.bottom, -150)

                VStack {
                    
                    ViewEpisodeButton()
                    
                    HStack {
                        NavigationLink(destination: QuotesView()) {
                            QuoteButtonView()
                        }
                        NavigationLink(destination: SimpsonList()) {
                            CharacterButtonView()
                        }
                    }
                }.offset(y: 300)

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


