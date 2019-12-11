//
//  MenuRowView.swift
//  SwiftUI-List
//
//  Created by Agustin Errecalde on 07/12/2019.
//  Copyright © 2019 nistsugaDev. All rights reserved.
//

import SwiftUI

struct MenuRowView: View {
    
    var rowActive: Bool
    var icon = "house"
    var text = "Dashboard"
    
    var body: some View {
        HStack{
            Image(systemName: icon)
                .foregroundColor(rowActive ? Color(.black) : Color(.blue))
                .font(.system(size: 15, weight: rowActive ? .bold : .regular))
                .frame(width: 48, height: 32)
            
            Text(text)
                .font(.system(size: 15, weight: rowActive ? .bold : .regular))
            
            Spacer()
        }
        .padding(4)
        .background(Color.white.opacity(0.7))
        .padding(.trailing,20)
        .clipShape(RoundedRectangle(cornerRadius: 20, style: .continuous)).shadow(radius: 10)
        .offset(x: 20)
    }
}

struct MenuRowViewUser: View {
    
    var rowActive: Bool
    var icon = "house"
    var nickName = "newUser"
    
    var body: some View {
            HStack{
                Spacer()
                
                Image(icon)
                    .resizable()
                    .frame(width: 30, height: 30)
                    .clipShape(Circle())
                
                Text(nickName)
                    .font(.custom("EuphemiaUCAS-Bold ", size: 15))
                
                
            }
            .padding(4)
            .background(Color.white.opacity(0.7))
            .padding(.leading,50)
            .clipShape(RoundedRectangle(cornerRadius: 20, style: .circular)).shadow(radius: 10)
            .offset(x: -200)

        
    }
}
