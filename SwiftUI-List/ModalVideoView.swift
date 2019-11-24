//
//  ModalVideoView.swift
//  SwiftUI-List
//
//  Created by Agustin Errecalde on 19/11/2019.
//  Copyright © 2019 nistsugaDev. All rights reserved.
//

import SwiftUI

struct ModalVideo: View {
    
    @Binding var isPresented: Bool

    var body: some View {
        PlayerVideoView()
    }
}
