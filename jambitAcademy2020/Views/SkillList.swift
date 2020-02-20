//
//  SkillList.swift
//  jambitAcademy2020
//
//  Created by David Symhoven on 18.02.20.
//  Copyright © 2020 davidsymhoven. All rights reserved.
//

import SwiftUI

struct SkillList: View {

    @ObservedObject var skillViewModel = SkillViewModel()

    var body: some View {
        NavigationView() {
            List(skillViewModel.skills) { skill in
                SkillView(skill: skill)
            }
            .navigationBarTitle(Text("Skills"))
        }
    }
}

struct SkillList_Previews: PreviewProvider {
    static var previews: some View {
        SkillList()
    }
}
