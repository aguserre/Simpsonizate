//
//  SignUpView.swift
//  SwiftUI-List
//
//  Created by Agustin Errecalde on 09/12/2019.
//  Copyright © 2019 nistsugaDev. All rights reserved.
//

import SwiftUI

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
        
        ZStack {
            Color.yellow
                .edgesIgnoringSafeArea(.all)
            
            VStack{
                Text("Create an account")
                .font(.system(size: 32, weight: .heavy))
                Text("Sign up to get started")
                .font(.system(size: 18, weight: .medium))
                    .foregroundColor(Color(.gray))
                
                VStack(spacing: 10){
                    TextField("Email adress", text: $email)
                    .font(.system(size: 14))
                    .padding(12)
                    .background(RoundedRectangle(cornerRadius: 5).strokeBorder(Color(.black), lineWidth: 1))
                    .onTapGesture {
                        let keyWindow = UIApplication.shared.connectedScenes
                            .filter({$0.activationState == .foregroundActive})
                            .map({$0 as? UIWindowScene})
                            .compactMap({$0})
                            .first?.windows
                            .filter({$0.isKeyWindow}).first
                        keyWindow?.endEditing(true)
                    }

                    SecureField("Password", text: $password)
                    .font(.system(size: 14))
                    .padding(12)
                    .background(RoundedRectangle(cornerRadius: 5).strokeBorder(Color(.black), lineWidth: 1))
                    .onTapGesture {
                        let keyWindow = UIApplication.shared.connectedScenes
                            .filter({$0.activationState == .foregroundActive})
                            .map({$0 as? UIWindowScene})
                            .compactMap({$0})
                            .first?.windows
                            .filter({$0.isKeyWindow}).first
                        keyWindow?.endEditing(true)
                    }
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
}
