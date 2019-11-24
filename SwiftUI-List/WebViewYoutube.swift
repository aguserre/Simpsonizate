//
//  WebViewYoutube.swift
//  SwiftUI-List
//
//  Created by Agustin Errecalde on 23/11/2019.
//  Copyright © 2019 nistsugaDev. All rights reserved.
//

import SwiftUI
import WebKit


struct WebView: UIViewRepresentable {

    var url: String
    
    func makeUIView(context: Context) -> WKWebView {
        let urlString = URL(string: "https://www.youtube.com/embed/\(url)")

        let webViewConfiguration = WKWebViewConfiguration()
        webViewConfiguration.allowsInlineMediaPlayback = true
        
        let webView = WKWebView(frame: .zero,configuration: webViewConfiguration)
        webView.allowsBackForwardNavigationGestures = true
        webView.load(URLRequest(url: urlString!))
        
        return webView
    }
    
    func updateUIView(_ uiView: WKWebView, context: UIViewRepresentableContext<WebView>) {
        print("dsajsdhaiowqorqkjnrqkwnrqkw")
    }
    
}


