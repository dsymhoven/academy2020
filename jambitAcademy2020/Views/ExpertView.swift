//
//  ExpertView.swift
//  jambitAcademy2020
//
//  Created by David Symhoven on 27.01.20.
//  Copyright © 2020 davidsymhoven. All rights reserved.
//

import SwiftUI

struct ExpertView: View {
    var body: some View {
        HStack {
            Image("david")
                .resizable()
                .frame(width: 50, height: 50)

            VStack(alignment: .leading) {
                Text("David Symhoven")
                    .font(.headline)
                Text("Scrum Master")
                    .font(.subheadline)
                    .foregroundColor(.gray)
                Text("666")
                    .font(.subheadline)
                    .foregroundColor(.gray)
            }

            Spacer()
        }
    }
}

struct ExpertView_Previews: PreviewProvider {
    static var previews: some View {
        ExpertView()
            .previewLayout(.fixed(width: 300, height: 70))
    }
}
