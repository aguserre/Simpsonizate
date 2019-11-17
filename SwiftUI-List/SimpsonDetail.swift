//
//  SimpsonDetail.swift
//  SwiftUI-List
//
//  Created by Agustin Errecalde on 16/11/2019.
//  Copyright © 2019 nistsugaDev. All rights reserved.
//

import SwiftUI

struct SimpsonDetailView: View {
    
    var simpson: SimpsonCharacter
    
    var body: some View {
        Text(simpson.name)
    }
}

struct SimpsonDetailView_Previews: PreviewProvider {
    static var previews: some View {
        SimpsonDetailView(simpson: simpsonData[0])
    }
}
