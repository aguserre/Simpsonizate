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
                
                LinearGradient(gradient: Gradient(colors: [Color("color2"),Color("color2"),Color("color1")]), startPoint: .top, endPoint: .bottom).blur(radius: menuShow ? 30 : 0)
                

                VStack {
                    Image("springfield")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .blur(radius: menuShow ? 30 : 0)
                    CircularSpringfieldImage()
                        .offset(y: -100)
                    .blur(radius: menuShow ? 30 : 0)
                    VStack{
                        Image("simp")
                        .resizable()
                        .frame(width: UIScreen.main.bounds.width-10, height: 150)
                            .offset(y: -100)
                        .blur(radius: menuShow ? 30 : 0)
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
                                .animation(Animation.easeInOut(duration: 0.4)
                                    .repeatForever(autoreverses: true))
                                .onAppear() {
                                    self.animationAmount += 0.5
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



