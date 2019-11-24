//
//  WebViewYoutube.swift
//  SwiftUI-List
//
//  Created by Agustin Errecalde on 23/11/2019.
//  Copyright © 2019 nistsugaDev. All rights reserved.
//

import Foundation
import SwiftUI
import WebKit


struct WebView: UIViewRepresentable {

    var url: String
    var fjsa:CGFloat = 1
    
    func makeUIView(context: Context) -> WKWebView {
        let urlString = URL(string: "https://www.youtube.com/embed/\(url)")

        let webViewConfiguration = WKWebViewConfiguration()
        webViewConfiguration.allowsInlineMediaPlayback = true
        
        let webView = WKWebView(frame: .zero,configuration: webViewConfiguration)
        webView.backgroundColor = UIColor(red:0, green:0, blue:0, alpha:1)
        
        webView.load(URLRequest(url: urlString!))
        
        
        return webView
    }
    
    func updateUIView(_ uiView: WKWebView, context: UIViewRepresentableContext<WebView>) {
        
    }
    
    
    func loadUrl () {
        
    }
    
}
