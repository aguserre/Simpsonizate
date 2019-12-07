//
//  DrawView.swift
//  SwiftUI-List
//
//  Created by Agustin Errecalde on 27/11/2019.
//  Copyright © 2019 nistsugaDev. All rights reserved.
//

import SwiftUI
import UIKit
import PencilKit

struct DrawView: View {
    
    @State var lineWidth: Double = 1
    @State var toolPikerActive: Bool = false
    @State var darkMode: Bool = false
    
    @State var colorRed: String = ""
    @State var colorBlue: String = ""
    @State var colorGreen: String = ""
    
    var darkModeImageName : String {
        if darkMode{
            return "whiteSquare"
        } else {
            return "blackSquare"
        }
    }
    
    var stringImageName : String {
        if toolPikerActive{
            return "donutFull"
        } else {
            return "donutNotFull"
        }
    }
    
    var colorRedD : Double {
        stringToDouble(string: colorRed)
    }
    var colorBlueD : Double {
        stringToDouble(string: colorBlue)
    }
    var colorGreenD : Double {
        stringToDouble(string: colorGreen)
    }
    
    
    var body: some View {
        ZStack {
            
            Color.yellow
                .edgesIgnoringSafeArea(.all)
            PKCanvasRepresentation(toolsActive: $toolPikerActive, darkMode: $darkMode)
            .cornerRadius(10)
            .shadow(radius: 10)
                
        }
        .navigationBarTitle("Draw zone")
        .navigationBarItems(trailing:
            HStack {
                Button(action: {
                    self.darkMode.toggle()
                }){
                    HStack{
                        Image(darkModeImageName)
                            .resizable()
                            .renderingMode(.original)
                            .aspectRatio(contentMode: .fill)
                            .cornerRadius(10)
                        
                    }.frame(width: 36, height: 35)
                }
            
                Button(action: {
                    self.toolPikerActive.toggle()
                }){
                    HStack{
                    Image(stringImageName)
                        .resizable()
                        .renderingMode(.original)
                        .aspectRatio(contentMode: .fill)
                    }.frame(width: 36, height: 35)
                }
            })
    }
}

func stringToDouble(string: String?) -> Double {
    var double: Double?
    if let stringA = string {
        double = Double(stringA)
    }
    return double ?? 0.0
}


struct DrawViewView_Previews: PreviewProvider {
    static var previews: some View {
        DrawView()
    }
}
