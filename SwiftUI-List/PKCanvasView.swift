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
    
    @Binding var toolsActive: Bool
    @Binding var darkMode: Bool
    
    func makeUIView(context: Context) -> PKCanvasView {
        let canvas = PKCanvasView()
        canvas.tool = PKInkingTool(.pencil, color: .black, width: 1)
        canvas.backgroundColor = .white
        canvas.allowsFingerDrawing = true
    
        return canvas
    }
    
    func updateUIView(_ uiView: PKCanvasView, context: UIViewRepresentableContext<PKCanvasRepresentation>) {
        
        if let window = UIApplication.shared.windows.last, let toolPicker = PKToolPicker.shared(for: window) {
          toolPicker.setVisible(toolsActive, forFirstResponder: uiView)
          toolPicker.addObserver(uiView)
          uiView.becomeFirstResponder()
        }
        
        if darkMode {
            uiView.backgroundColor = .black
        } else {
            uiView.backgroundColor = .white
        }
    }
}

    


