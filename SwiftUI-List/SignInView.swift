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
    @EnvironmentObject var session: SessionStore
    
    func signIn(){
        session.signIn(email: email, password: password) { result, error in
            if let error = error {
                self.error = error.localizedDescription
            } else {
                self.email = ""
                self.password = ""
            }
        }
        
    }
    var body: some View {
        VStack{
            Text("Welcome Back!")
                .font(.system(size: 32, weight: .heavy))
            
            Text("Sign in to continue")
                .font(.system(size: 18, weight: .medium))
                .foregroundColor(.gray)
            
            VStack(spacing: 10){
                
                TextField("Email adress", text: $email)
                    .font(.system(size: 14))
                    .padding(12)
                    .background(RoundedRectangle(cornerRadius: 5).strokeBorder(Color(.blue), lineWidth: 1))
               
                SecureField("Password", text: $password)
                .font(.system(size: 14))
                .padding(12)
                    .background(RoundedRectangle(cornerRadius: 5).strokeBorder(Color(.blue), lineWidth: 1))

            }
            .padding(.vertical, 64)
            
            Button(action: signIn) {
                Text("Sign In")
                    .frame(minWidth: 0, maxWidth: .infinity)
                    .frame(height: 50)
                    .foregroundColor(.white)
                    .font(.system(size: 14, weight: .bold))
                    .background(LinearGradient(gradient: Gradient(colors: [.yellow,.purple]), startPoint: .leading, endPoint: .trailing))
                .cornerRadius(5)
            }
            
            if (error != ""){
                Text(error)
                .font(.system(size: 14))
                .foregroundColor(.red)
                .padding()
            }
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

struct SignUpView : View {
    @State var email = ""
    @State var password = ""
    @State var error = ""
    @EnvironmentObject var session: SessionStore
    
    func signUp(){
           session.signUp(email: email, password: password) { result, error in
               if let error = error {
                   self.error = error.localizedDescription
               } else {
                   self.email = ""
                   self.password = ""
               }
           }
       }
    
    var body: some View {
        
        VStack{
            Text("Create an account")
            .font(.system(size: 32, weight: .heavy))
            Text("Sign up to get started")
            .font(.system(size: 18, weight: .medium))
            .foregroundColor(Color("Gray"))
            
            VStack(spacing: 10){
                TextField("Email adress", text: $email)
                .font(.system(size: 14))
                .padding(12)
                    .background(RoundedRectangle(cornerRadius: 5).strokeBorder(Color(.black), lineWidth: 1))

                SecureField("Password", text: $password)
                .font(.system(size: 14))
                .padding(12)
                    .background(RoundedRectangle(cornerRadius: 5).strokeBorder(Color(.black), lineWidth: 1))
            }.padding(.vertical, 64)
            
            Button(action: signUp){
                Text("Create account")
                    .frame(minWidth: 0, maxWidth: .infinity)
                    .frame(height: 50)
                    .foregroundColor(.white)
                    .font(.system(size: 14, weight: .bold))
                    .background(LinearGradient(gradient: Gradient(colors: [.yellow,.purple]), startPoint: .leading, endPoint: .trailing))
                    .cornerRadius(5)
            }
            if (error != ""){
                Text(error)
                .font(.system(size: 14))
                .foregroundColor(.red)
                .padding()
            }
            Spacer()
        }.padding(.horizontal, 32)
        
        
        
    }
}

struct AuthView: View {
    var body: some View{
        NavigationView{
            SignInView()
        }
    }
}
