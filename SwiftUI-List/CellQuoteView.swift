//
//  CellQuoteView.swift
//  SwiftUI-List
//
//  Created by Agustin Errecalde on 18/11/2019.
//  Copyright © 2019 nistsugaDev. All rights reserved.
//

import SwiftUI
import SDWebImageSwiftUI
import Alamofire
import SwiftyJSON

struct CardQuote: View {
    
    var nameAPI = ""
    var nameUser: [String]  {
        nameAPI.components(separatedBy: " ")}
    var quote = ""
    var image = ""
    var body : some View {
        
        HStack(alignment: .top) {
            AnimatedImage(url: URL(string: image)!)
                .resizable()
                .frame(width:50, height: 50)
                .clipShape(Circle())
            
            VStack(alignment: .leading, spacing: 10) {
                HStack(alignment: .top) {
                        HStack(alignment: .top){
                        Text(nameUser[0]).fontWeight(.heavy).font(.system(size: 18))
                            imageCheckAccount()
                        }
                        
                        Text(nameFormater(nameCompleteWithSpaces: nameAPI))
                            .font(.system(size: 15))
                            .fontWeight(.light)

                    }
                Text(quote).fontWeight(.light)
                .font(.system(size: 16))

            }
        }
        .padding(.top, 15)
        .padding(.bottom, 15)
    }
}


func nameFormater(nameCompleteWithSpaces: String)-> String {
    let names: [String]?
    names = nameCompleteWithSpaces.components(separatedBy: " ")
    var finalName: String = ""

    if let namesArray = names {
        for name in namesArray {
            finalName += name
        }
    } else {
        finalName = "unknowuser"
    }
    return "@"+finalName.lowercased()
}

struct imageCheckAccount: View {
    var body : some View {

        Image("twCheck")
            .resizable()
            .aspectRatio(contentMode: .fit)
            .frame(width: 15, height: 15)
    }
}


struct CellQuoteEmpty: View {
    
    var error = ""

    var body : some View {
        ZStack {
            
            HStack(alignment: .center) {
                Color(red: 247/256, green: 206/256, blue: 70/256)
                    .cornerRadius(20)
                    .shadow(radius: 10)
                
            }.frame(width: 300)
            HStack {
                Text(error).font(.subheadline)
            }.frame(width: 280, height: 200)
        }
        .frame(width: UIScreen.main.bounds.width, height: 200)
    }
}


struct CardQuote_Previews: PreviewProvider {
    static var previews: some View {
        CardQuote()
    }
}

