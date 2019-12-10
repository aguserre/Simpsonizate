//
//  ContentView.swift
//  SwiftUI-List
//
//  Created by Agustin Errecalde on 16/11/2019.
//  Copyright © 2019 nistsugaDev. All rights reserved.
//

import SwiftUI
import Lottie


struct HomeView: View {
    
    @State var menuShow = false
    @State var animationAmount : CGFloat = 1
    
    var body: some View {
        
        NavigationView {
            
            ZStack{
                
                LinearGradient(gradient: Gradient(colors: [.yellow, .yellow, .gray]), startPoint: .top, endPoint: .bottom)

                VStack {
                    Image("springfield")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    CircularSpringfieldImage()
                        .offset(y: -100)
                    VStack{
                        Image("simp")
                        .resizable()
                        .frame(width: UIScreen.main.bounds.width-10, height: 150)
                            .offset(y: -100)
                        Button(action: {
                            self.menuShow.toggle()
                        }) {
                            VStack{
                            Image("donutFull")
                                .renderingMode(.original)
                                .resizable()
                                .frame(width: 50, height:  50)
                                .imageScale(.large)
                                .foregroundColor(.black)
                                .scaleEffect(animationAmount)
                                .animation(Animation.easeInOut(duration: 1)
                                    .repeatForever(autoreverses: true))
                                .onAppear() {
                                    self.animationAmount += 1
                                }
                            .padding()
                                
                            Text("Menu")
                                .font(.system(size: 15, weight: .semibold))
                                .foregroundColor(.black)
                            }
                        }
                    }
                    Spacer()
                }
                MenuView(menuShow: $menuShow)
            }
            .edgesIgnoringSafeArea(.all)
            .navigationBarTitle("")
        }
    }
    
}



