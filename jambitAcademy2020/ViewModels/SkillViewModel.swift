//
//  SkillViewModel.swift
//  jambitAcademy2020
//
//  Created by David Symhoven on 18.02.20.
//  Copyright © 2020 davidsymhoven. All rights reserved.
//

import Foundation

final class SkillViewModel: ObservableObject {

    @Published var skills = [Skill]()

    init() {
        Webservice().fetchSkillsFromWeb { [weak self] skills in
            guard let self = self else { return }
            self.skills = skills
        }
    }
}
