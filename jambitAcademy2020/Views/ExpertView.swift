//
//  ExpertView.swift
//  jambitAcademy2020
//
//  Created by David Symhoven on 27.01.20.
//  Copyright © 2020 davidsymhoven. All rights reserved.
//

import SwiftUI

struct ExpertView: View {
    let expert: Expert

    var body: some View {
        HStack {
            Image(expert.name ?? "")
                .resizable()
                .frame(width: 50, height: 50)

            VStack(alignment: .leading) {
                Text(expert.name ?? "")
                    .font(.headline)
                Text(expert.job ?? "")
                    .font(.subheadline)
                    .foregroundColor(.gray)
                Text(expert.phone ?? "")
                    .font(.subheadline)
                    .foregroundColor(.gray)
            }

            Spacer()
        }
    }
}

struct ExpertView_Previews: PreviewProvider {
    static var previews: some View {
        ExpertView(expert: Expert(name: "A", job: "B", phone: "1", favoritePlace: ""))
            .previewLayout(.fixed(width: 300, height: 70))
    }
}
