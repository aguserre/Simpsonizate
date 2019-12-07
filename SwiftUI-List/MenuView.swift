//
//  MenuView.swift
//  SwiftUI-List
//
//  Created by Agustin Errecalde on 07/12/2019.
//  Copyright © 2019 nistsugaDev. All rights reserved.
//

import SwiftUI

struct MenuView: View {
    
    @Binding var menuShow: Bool
    
    var body: some View {
        VStack{
            
            HStack{
                    Spacer()
                VStack {
                    Image("LaMori")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 60, height: 60)
                    .clipShape(Circle())
                    .padding(.horizontal, 24)
                    
                    Text("Morita")
                    .foregroundColor(.white)
                    .font(.system(size: 20, weight: .semibold))
                    .padding(.top, 10)
                    .padding(.bottom, 40)
                }
            }
            .padding(.top, 20)
            
            Spacer()
            
            Image("homerDonut")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: UIScreen.main.bounds.width - 80, height: 200)
            
            
            NavigationLink(destination: DrawView()) {
                MenuRowView(rowActive: true, icon: "pencil", text: "Draw you Simpson")
            }
            NavigationLink(destination: QuotesView()) {
                MenuRowView(rowActive: true, icon: "quote.bubble.fill", text: "Twittson")
            }
            NavigationLink(destination: ModalVideo(isPresented: $menuShow)) {
                MenuRowView(rowActive: true, icon: "video.circle.fill", text: "Random cap")
            }
            NavigationLink(destination: SimpsonList()) {
                MenuRowView(rowActive: true, icon: "person.crop.circle.fill", text: "Simpsons list")
            }
            
            
        }
        .padding(.vertical, 30)
        .background(LinearGradient(gradient: Gradient(colors: [.yellow, .purple,  .yellow]), startPoint: .top, endPoint: .bottom).cornerRadius(20).shadow(radius: 15))
        .padding(.trailing, 80)
        .offset(x: menuShow ? 0 : -UIScreen.main.bounds.width)
        .animation(.default)
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
