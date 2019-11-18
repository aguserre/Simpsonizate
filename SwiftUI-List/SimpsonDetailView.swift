//
//  SimpsonDetailView.swift
//  SwiftUI-List
//
//  Created by Agustin Errecalde on 17/11/2019.
//  Copyright © 2019 nistsugaDev. All rights reserved.
//

import SwiftUI

struct SimpsonDetailView: View {
    
    var simpson: SimpsonCharacter
    
    var body: some View {
        
        VStack(alignment: .leading, spacing: 16.0) {
            
            Image(simpson.image)
            .resizable()
            .renderingMode(.original)
            .aspectRatio(contentMode: .fill)
            .frame(width: 300, height: 170)
            .cornerRadius(10)
            .shadow(radius: 10)
            
                VStack(alignment: .leading, spacing: 5){
                    HStack{
                        Text(simpson.name)
                        .font(.headline)
                        .foregroundColor(.primary)
                        Text("("+simpson.age+")")
                        .foregroundColor(.secondary)
                    }
                Text(simpson.shortDescription)
                    .font(.subheadline)
                    .foregroundColor(.secondary)
                    .multilineTextAlignment(.leading)
                    .lineLimit(2)
                    .frame(height: 40)
            }
        }
        
    }
    
}

struct SimpsonDetailView_Previews: PreviewProvider {
    static var previews: some View {
        SimpsonDetailView(simpson: simpsonData[0])
    }
}
