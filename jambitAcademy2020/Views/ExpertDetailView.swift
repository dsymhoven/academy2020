//
//  ExpertDetailView.swift
//  jambitAcademy2020
//
//  Created by David Symhoven on 28.01.20.
//  Copyright © 2020 davidsymhoven. All rights reserved.
//

import SwiftUI

struct ExpertDetailView: View {
    var expert: Expert

    var body: some View {
        VStack {
            Image(expert.favoritePlace ?? "")
                .resizable()
                .scaledToFit()
                .edgesIgnoringSafeArea(.top)

            CircleView(image: Image(expert.name ?? ""))
                .offset(y: -230)
                .padding(.bottom, -130)

            ExpertStarView(expert: expert)

            Spacer()
        }
    }
}

struct ExpertDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ExpertDetailView(expert: Expert(name: "A", job: "B", phone: "1", favoritePlace: ""))
    }
}
