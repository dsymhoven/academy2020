//
//  CircleView.swift
//  jambitAcademy2020
//
//  Created by David Symhoven on 27.01.20.
//  Copyright © 2020 davidsymhoven. All rights reserved.
//

import SwiftUI

struct CircleView: View {
    var body: some View {
        Image(experts[0].name)
            .resizable()
            .frame(width: 300, height: 300)
            .scaledToFit()
            .clipShape(Circle())
            .overlay(Circle().stroke(Color.white, lineWidth: 4.0))
            .shadow(radius: 10)
    }
}

struct CircleView_Previews: PreviewProvider {
    static var previews: some View {
        CircleView()
    }
}
