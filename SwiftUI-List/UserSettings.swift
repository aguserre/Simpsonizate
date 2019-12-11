//
//  UserSettings.swift
//  SwiftUI-List
//
//  Created by Agustin Errecalde on 10/12/2019.
//  Copyright © 2019 nistsugaDev. All rights reserved.
//

import SwiftUI
import Firebase
    
struct UserSettings: View {
    
    @EnvironmentObject var session: SessionStore
    @State var displayName = ""
    @State var error = ""
    @State var newPassword1 = ""
    @State var newPassword2 = ""
    @State var showa = false
    @State var errorMsg = ""
    
    func changeDisplayName(){
        let changeRequest = Auth.auth().currentUser?.createProfileChangeRequest()
        changeRequest?.displayName = self.displayName
        changeRequest?.commitChanges(completion: { (error) in
            if let error = error {
                self.error = error.localizedDescription
                self.errorMsg = self.error
                self.showa.toggle()
            } else {
            self.errorMsg = "Success! Your nickname will be changed the next time you sign in"
                self.displayName = ""
                self.showa.toggle()
            }
        })
    }
    func changePassword(){
        let user = Auth.auth().currentUser
        if newPassword1 == newPassword2 {
            user?.updatePassword(to: newPassword1, completion: { (error) in
                if let error = error {
                    self.error = error.localizedDescription
                    self.errorMsg = self.error
                    self.showa.toggle()
                }else {
                self.errorMsg = "Success! Your password was changed"
                    self.showa.toggle()
                    self.newPassword1 = ""
                    self.newPassword2 = ""
                }
            })
        } else {
            self.errorMsg = "The password not equal"
            self.showa.toggle()
        }
    }
    
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [Color("color2"),Color("color2"),Color("color1")]), startPoint: .top, endPoint: .bottom)
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                Text("Select your nickname")
                    .padding(.top, 30)

                HStack{
                    Image(systemName: "person.fill")
                        .resizable()
                        .frame(width: 18, height: 18)
                    TextField("NickName", text: $displayName)
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
                
                Button(action: {
                    self.changeDisplayName()
                }) {
                    Text("Save")
                }.alert(isPresented: $showa) {
                    return Alert(title: Text(self.errorMsg))
                }.padding(.bottom, 30)
                
                Divider()
                
                Text("Change password")
                    .padding(.top, 30)
                HStack{
                    Image(systemName: "lock.fill")
                        .resizable()
                        .frame(width: 18, height: 18)
                    SecureField("Password", text: $newPassword1)
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
                    SecureField("Rewrite", text: $newPassword2)
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
                
                Button(action: {
                    self.changePassword()
                }) {
                    Text("Save")
                }.alert(isPresented: $showa) {
                    return Alert(title: Text(self.errorMsg))
                }
                Spacer()
            }.padding(.horizontal, 15)
        }.navigationBarTitle(Text("Settings"))
        
    }
}

struct UserSettings_Previews: PreviewProvider {
    static var previews: some View {
        UserSettings()
    }
}
