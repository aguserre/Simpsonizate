//
//  MenuView.swift
//  SwiftUI-List
//
//  Created by Agustin Errecalde on 07/12/2019.
//  Copyright © 2019 nistsugaDev. All rights reserved.
//

import SwiftUI
import FirebaseAuth

struct MenuView: View {
    
    @Binding var menuShow: Bool
    @State var isPresentedSettings = false
    @State var userName = Auth.auth().currentUser?.displayName
    @EnvironmentObject var session: SessionStore
    

    var body: some View {
        VStack{
            
            MenuRowViewUser(rowActive: false, icon: "LaMori", nickName: userName ?? "userName")
                .offset(y: 40)

            Spacer()

            Image("homerDonut")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: UIScreen.main.bounds.width - 80, height: 200)
                .padding(.bottom)
            
            NavigationLink(destination: DrawView()) {
                MenuRowView(rowActive: true, icon: "pencil", text: "Draw you Simpson")
            }
            NavigationLink(destination: QuotesView()) {
                MenuRowView(rowActive: true, icon: "quote.bubble.fill", text: "Twittson")
            }
            NavigationLink(destination: ModalVideo()) {
                MenuRowView(rowActive: true, icon: "video.circle.fill", text: "Random cap")
            }
            NavigationLink(destination: SimpsonList()) {
                MenuRowView(rowActive: true, icon: "person.crop.circle.fill", text: "Simpsons list")
            }

            Divider()
                .foregroundColor(.black)
                .padding(.vertical, 10)
                .padding(.horizontal, 15)
            
            
            NavigationLink(destination: UserSettings()) {
                MenuRowView(rowActive: false, icon: "wrench.fill", text: "Configure your user")
            }
            Button(action: {
                self.session.signOut()
            }) {
                MenuRowView(rowActive: false, icon: "multiply", text: "Sign Out")
            }.padding(.bottom, 0)
            
        }
        .padding(.vertical, 30)
        .background(LinearGradient(gradient: Gradient(colors: [Color("color1"), Color("color2")]), startPoint: .top, endPoint: .bottom).cornerRadius(20).shadow(radius: 25))
        .padding(.trailing, 70)
        .offset(x: menuShow ? 0 : -UIScreen.main.bounds.width)
        .animation(.default)
        .edgesIgnoringSafeArea(.bottom)
        .onTapGesture {
            self.menuShow.toggle()
        }
    }
}

struct MenuView_Previews: PreviewProvider {
    static var previews: some View {
        MenuView(menuShow: .constant(true))
    }
}
