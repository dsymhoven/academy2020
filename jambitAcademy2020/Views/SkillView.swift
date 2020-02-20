//
//  SkillView.swift
//  jambitAcademy2020
//
//  Created by David Symhoven on 18.02.20.
//  Copyright © 2020 davidsymhoven. All rights reserved.
//

import SwiftUI

struct SkillView: View {
    let skill: Skill
    var body: some View {
        HStack() {
            Image(skill.name ?? "")
                .resizable()
                .frame(width: 60, height: 60)

            Text(skill.name!).padding()
            Spacer()
        }

    }
}

struct SkillView_Previews: PreviewProvider {
    static var previews: some View {
        SkillView(skill: Skill(name: "iOS", level: 5)).previewLayout(.fixed(width: 300, height: 70))
    }
}
