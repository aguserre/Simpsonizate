//
//  LaunchScreenCustom.swift
//  SwiftUI-List
//
//  Created by Agustin Errecalde on 29/11/2019.
//  Copyright © 2019 nistsugaDev. All rights reserved.
//

import SwiftUI

struct LaunchScreenCustom: View {
    
    @State var show = false
    @State var rotate = false
    @State var buttonLinkShow = false
    
    var counter = 0
    
    var body: some View {
       
        ZStack {
            Color.yellow
                .edgesIgnoringSafeArea(.all)
            VStack{
                
                Text("SIMPSONIZED")
                    .font(.largeTitle)
                    .fontWeight(.semibold)
                    .foregroundColor(.black)
                    .padding(4)
                    .animation(.easeOut(duration: 0.3))

                
                Image("donutFull")
                    .resizable()
                    .frame(width: show ? 400 : 200, height: show ? 400 : 200, alignment: .center)
                    .blur(radius: show ? 0 : 30)
                    .rotationEffect(.degrees(show ? 360 : 0))
                    .animation(Animation
                        .linear(duration: 1)
                        .repeatCount(1, autoreverses: false))
                    .onAppear() {
                        self.show.toggle()
                    }
                    
                Text("Welcome to Simpsons app")
                .font(.subheadline)
                .fontWeight(.regular)
                .foregroundColor(.gray)
                .padding(4)
                .animation(.easeIn(duration: 0.4))

            }
        }

        
    }
}

struct LaunchScreenCustom_Previews: PreviewProvider {
    static var previews: some View {
        LaunchScreenCustom()
    }
}


