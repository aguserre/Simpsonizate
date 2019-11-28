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
    @State var ruleActive: Bool = false
    @State var colorRed: String = ""
    @State var colorBlue: String = ""
    @State var colorGreen: String = ""
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
            VStack {
                PKCanvasRepresentation(lineWidth: $lineWidth, ruleActive: $ruleActive)
                
                HStack {
                    VStack(alignment: .leading){
                            HStack{
                                Text("Color")
                                Color(red: colorRedD, green: colorGreenD, blue: colorBlueD)
                                    .frame(width: 10, height: 10, alignment: .leading)
                            }
                        
                            HStack{
                                Text("Red")
                                TextField("", text: $colorRed)
                                    .background(Color.white)
                                    .frame(width: 40)
                            }
                            HStack{
                                Text("Blue")
                                TextField("", text: $colorBlue)
                                    .background(Color.white)
                                    .frame(width: 40)

                            }
                            HStack{
                                Text("Green")
                                TextField("", text: $colorGreen)
                                    .background(Color.white)
                                    .frame(width: 40)

                            }
                        
                        }
                    
                        VStack{
                            Button("Rule") {
                                self.ruleActive.toggle()
                            }
                        }
                    
                    VStack {
                        Text("Line width")
                        Slider(value: $lineWidth, in: 0...30, step: 0.1)
                    }.frame(width: 100)
                }
            }
        }
        .navigationBarTitle("Draw zone")
            
            
    }


    
}

func stringToDouble(string: String?) -> Double {
    var double: Double?
    if let stringA = string {
        double = Double(stringA)
    }
    return double ?? 0.0
}
