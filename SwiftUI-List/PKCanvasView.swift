//
//  PKCanvasView.swift
//  SwiftUI-List
//
//  Created by Agustin Errecalde on 27/11/2019.
//  Copyright © 2019 nistsugaDev. All rights reserved.
//

import SwiftUI
import PencilKit


struct PKCanvasRepresentation: UIViewRepresentable {
    
    @Binding var lineWidth: Double
    @Binding var ruleActive: Bool
    
    func makeUIView(context: Context) -> PKCanvasView {
        let canvas = PKCanvasView()
        canvas.tool = PKInkingTool(.pencil, color: .black, width: CGFloat(lineWidth))
        canvas.isRulerActive = ruleActive
        canvas.allowsFingerDrawing = true
        
        return canvas
    }
    
    func updateUIView(_ uiView: PKCanvasView, context: UIViewRepresentableContext<PKCanvasRepresentation>) {
        print(lineWidth)
        uiView.isRulerActive = ruleActive
        uiView.tool = PKInkingTool(.pencil, color: .black, width: CGFloat(lineWidth))
        
    }

}


