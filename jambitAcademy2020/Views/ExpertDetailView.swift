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
            Image(expert.team ?? "")
                .resizable()
                .scaledToFill()
                .edgesIgnoringSafeArea(.top)

            CircleView(image: Image(expert.name ?? ""))
                .offset(y: -190)
                .padding(.bottom, -190)

            ButtonView()

            ExpertStarView(expert: expert)
            Spacer()
        }
    }
}

struct ExpertDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ExpertDetailView(expert: Expert(name: "David Symhoven", role: "Scrum Master", phone: "123", team: "adVANce"))
    }
}
