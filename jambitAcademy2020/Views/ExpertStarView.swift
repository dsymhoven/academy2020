//
//  ExpertStarView.swift
//  jambitAcademy2020
//
//  Created by David Symhoven on 27.01.20.
//  Copyright © 2020 davidsymhoven. All rights reserved.
//

import SwiftUI

struct ExpertStarView: View {
    var expert: Expert
    var body: some View {
        HStack {
            VStack(alignment: .leading) {
                Text(expert.name ?? "")
                Text(expert.job ?? "").font(.subheadline).foregroundColor(.gray)
                Text(expert.phone ?? "").font(.subheadline).foregroundColor(.gray)
            }

            if !expert.skills!.isEmpty {
                VStack(alignment: .trailing) {
                    ForEach(expert.skills!) { skill in
                        Text(skill.name ?? "")
                    }
                }


                VStack {
                    ForEach(expert.skills!) { skill in
                        HStack {
                            ForEach(0..<skill!.level!) { _ in
                                Image(systemName: "star.fill").foregroundColor(.yellow)
                            }
                            ForEach(skill!.level!..<5) { _ in
                                Image(systemName: "star.fill")
                            }

                        }
                    }
                }
            }
        }
        .padding()
    }
}

struct ExpertStarView_Previews: PreviewProvider {
    static var previews: some View {
        ExpertStarView(expert: Expert(name: "A", job: "B", phone: "1", favoritePlace: ""))
    }
}
