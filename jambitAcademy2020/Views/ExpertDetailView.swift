//
//  ExpertDetailView.swift
//  jambitAcademy2020
//
//  Created by David Symhoven on 28.01.20.
//  Copyright © 2020 davidsymhoven. All rights reserved.
//

import SwiftUI

struct ExpertDetailView: View {
    var body: some View {
        VStack {
            Image("Sebensee")
                .resizable()
                .scaledToFit()
                .edgesIgnoringSafeArea(.top)

            CircleView()
            .offset(y: -130)
                .padding(.bottom, -130)

            ExpertStarView()

            Spacer()
        }
    }
}

struct ExpertDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ExpertDetailView()
    }
}
