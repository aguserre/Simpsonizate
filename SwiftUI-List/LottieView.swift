//
//  LottieView.swift
//  SwiftUI-List
//
//  Created by Agustin Errecalde on 24/11/2019.
//  Copyright © 2019 nistsugaDev. All rights reserved.
//

import SwiftUI
import Lottie

struct AnimationsView: UIViewRepresentable {
    
    var animationName: String
    let animationView = AnimationView()

    
    func makeUIView(context: UIViewRepresentableContext<AnimationsView>) -> AnimationView {
        let animation = Animation.named(animationName)
        
        animationView.animation = animation
        animationView.contentMode = .scaleAspectFit
        animationView.play()
        animationView.loopMode = .repeat(91)
        animationView.translatesAutoresizingMaskIntoConstraints = false

        return animationView
    }
    
    func updateUIView(_ uiView: AnimationView, context: UIViewRepresentableContext<AnimationsView>) {
//        isAnimating ? uiView.play() : uiView.stop()
    }
}

struct LoadingView<Content>: View where Content: View {

    @State var isShowing: Bool
    var content: () -> Content

    var body: some View {
        GeometryReader { geometry in
            ZStack(alignment: .center) {

                self.content()
                    .disabled(self.isShowing)
                    .blur(radius: self.isShowing ? 3 : 0)

                VStack {
                    Text("Loading...")
                    AnimationsView(animationName: "loader")
                }
                .frame(width: geometry.size.width / 2,
                       height: geometry.size.height / 5)
                .background(Color.secondary.colorInvert())
                .foregroundColor(Color.primary)
                .cornerRadius(20)
                .opacity(self.isShowing ? 1 : 0)

            }
        }
    }

}

//struct ContentView: View {
//
//    var body: some View {
//        LoadingView(isShowing: .constant(true)) {
//
//            ModalVideo(isPresented: .constant(true))
//
//        }
//    }
//
//}
//
//struct ContentView_Previews: PreviewProvider {
//    static var previews: some View {
//        ContentView()
//    }
//}
