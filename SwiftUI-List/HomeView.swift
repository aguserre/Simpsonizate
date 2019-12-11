//
//  ContentView.swift
//  SwiftUI-List
//
//  Created by Agustin Errecalde on 16/11/2019.
//  Copyright © 2019 nistsugaDev. All rights reserved.
//

import SwiftUI
import Firebase

struct HomeView: View {
    
    @State var menuShow = false
    @State var animationAmount : CGFloat = 1
    @State var errorMsg = ""
    @State var verified = false
    @EnvironmentObject var session : SessionStore
    private var user = Auth.auth().currentUser?.isEmailVerified
    
    var body: some View {
        
        NavigationView {
            
            ZStack{
                
                LinearGradient(gradient: Gradient(colors: [Color("color2"),Color("color2"),Color("color1")]), startPoint: .top, endPoint: .bottom)

                VStack {
                    Image("springfield")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .blur(radius: menuShow ? 30 : 0)
                        .animation(Animation.easeOut(duration: 0.4))
                    
                    CircularSpringfieldImage()
                        .offset(y: -100)
                        .blur(radius: menuShow ? 30 : 0)
                        .animation(Animation.easeOut(duration: 0.4))
                    
                    VStack{
                        Image("simp")
                            .resizable()
                            .frame(width: UIScreen.main.bounds.width-10, height: 150)
                            .offset(y: -100)
                            .blur(radius: menuShow ? 30 : 0)
                            .animation(Animation.easeOut(duration: 0.4))
                        
                        Button(action: {
                            if let userVerified = self.user, !userVerified {
                                self.errorMsg = "To use the content, you must verify the account. Please, check your email"
                                Auth.auth().currentUser?.sendEmailVerification()
                                self.verified.toggle()
                            } else {
                                self.menuShow.toggle()
                            }
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
                                Text("Menu")
                                    .font(.system(size: 22, weight: .bold))
                                    .foregroundColor(.black)
                                
                            }
                            .blur(radius: menuShow ? 30 : 0)
                            .animation(Animation.easeOut(duration: 0.4))
                            
                        }
                    }.alert(isPresented: $verified) {
                        return Alert(title: Text("Sorry!"), message: Text(errorMsg), dismissButton: .default(Text("Sign Out"), action: {
                            self.session.signOut()
                        }))
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



