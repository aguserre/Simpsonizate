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
            LinearGradient(gradient: Gradient(colors:[Color("color2"), Color("color1")]), startPoint: .leading, endPoint: .trailing)
            .edgesIgnoringSafeArea(.all)
            
            VStack{
                Text("Create an account")
                .font(.system(size: 32, weight: .heavy))
                Text("Sign up to get started")
                .font(.system(size: 18, weight: .medium))
                    .foregroundColor(Color(.gray))
                
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
                    
                    Button(action: signUp) {
                        Text("Sign In")
                        .frame(width: 150, height: 40)
                        .font(.system(size: 15))
                        .foregroundColor(.black)
                        .background(LinearGradient(gradient: .init(colors: [Color("color2"), Color("color1")]), startPoint: .leading, endPoint: .bottomTrailing))
                        .cornerRadius(20)
                        .shadow(radius: 8)
                    }
                    
                }.padding(.vertical, 10)
                
                
                if (error != ""){
                    Text(error)
                    .font(.system(size: 14))
                    .foregroundColor(.red)
                    .padding()
                }
                Spacer()
                VStack{
                    Image("Simpsons_tv")
                    .resizable()
                    .frame(width: UIScreen.main.bounds.width - 40, height: 280)
                    
                }
            }.padding(.horizontal, 32)
        }
    }
}

struct signUp_Previews: PreviewProvider {
    static var previews: some View {
        SignUpView()
    }
}