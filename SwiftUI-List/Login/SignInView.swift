//
//  SignInView.swift
//  SwiftUI-List
//
//  Created by Agustin Errecalde on 08/12/2019.
//  Copyright © 2019 nistsugaDev. All rights reserved.
//

import SwiftUI

struct SignInView: View {
    @State var email = ""
    @State var password = ""
    @State var error = ""
    @State var showa = false
    @State var errorMsg = ""
    @EnvironmentObject var session: SessionStore
    
    func signIn(){
        session.signIn(email: email, password: password) { result, error in
            if let error = error {
                self.error = error.localizedDescription
                self.errorMsg = self.error
                self.showa.toggle()
            } else {
                self.email = ""
                self.password = ""
            }
        }
        
    }
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors:[Color("color2"), Color("color1")]), startPoint: .leading, endPoint: .trailing)
                .edgesIgnoringSafeArea(.all)
            
            VStack{
                Text("Welcome Back!")
                    .font(.system(size: 32, weight: .heavy))
                
                Text("Sign in to continue")
                    .font(.system(size: 18, weight: .medium))
                    .foregroundColor(.gray)
                
                VStack(spacing: 20){
                    
                    HStack{
                    Image(systemName: "person.fill")
                        .resizable()
                        .frame(width: 18, height: 18)
                    TextField("Email adress", text: $email)
                        .font(.system(size: 18))
                        .padding(.leading, 12)
                        .onTapGesture {
                            let keyWindow = UIApplication.shared.connectedScenes
                                .filter({$0.activationState == .foregroundActive})
                                .map({$0 as? UIWindowScene})
                                .compactMap({$0})
                                .first?.windows
                                .filter({$0.isKeyWindow}).first
                            keyWindow?.endEditing(true)
                        }
                    }
                    .padding(12)
                    .background(Color(.white))
                    .cornerRadius(15)
                    .shadow(radius: 10)
                    
                    HStack{
                        
                        Image(systemName: "lock.fill")
                        .resizable()
                        .frame(width: 18, height: 18)
                        
                        SecureField("Password", text: $password)
                        .font(.system(size: 18))
                        .padding(.leading, 12)
                        .onTapGesture {
                            let keyWindow = UIApplication.shared.connectedScenes
                                .filter({$0.activationState == .foregroundActive})
                                .map({$0 as? UIWindowScene})
                                .compactMap({$0})
                                .first?.windows
                                .filter({$0.isKeyWindow}).first
                            keyWindow?.endEditing(true)
                        }
                    }.padding(12)
                    .background(Color(.white))
                    .cornerRadius(15)
                    .shadow(radius: 10)
                    
                    HStack{
                        Button(action: {
                            self.signIn()
                        })  {
                            Text("Sign In")
                            .frame(width: 150, height: 40)
                            .font(.system(size: 15))
                            .foregroundColor(.black)
                            .background(LinearGradient(gradient: .init(colors: [Color("color2"), Color("color1")]), startPoint: .leading, endPoint: .bottomTrailing))
                            .cornerRadius(20)
                            .shadow(radius: 8)
                        }
                        
                    }.alert(isPresented: $showa) {
                        return Alert(title: Text(self.errorMsg))
                    }
                }
                .padding(.vertical, 64)
                
                Spacer()
                
                NavigationLink(destination: SignUpView()) {
                    Text("Im new user")
                        .font(.system(size: 14, weight: .light))
                        .foregroundColor(.primary)
                    Text("Create an account")
                    .font(.system(size: 14, weight: .semibold))
                        .foregroundColor(Color(.blue))
                }
            }
            .padding(.horizontal, 32)
        }
    }
}

struct SignInView_Previews: PreviewProvider {
    static var previews: some View {
        AuthView()
    }
}

