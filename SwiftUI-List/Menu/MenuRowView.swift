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
                .foregroundColor(rowActive ? Color(.black) : Color(.white))
                .font(.system(size: 15, weight: rowActive ? .bold : .regular))
                .frame(width: 48, height: 32)
            
            Text(text)
                .font(.system(size: 15, weight: rowActive ? .bold : .regular))
            
            Spacer()
        }
        .padding(4)
        .background(Color.white.opacity(0.9))
        .padding(.trailing,20)
        .clipShape(RoundedRectangle(cornerRadius: 20, style: .continuous))
        .offset(x: 20)
    }
}
