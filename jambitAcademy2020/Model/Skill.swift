//
//  Skill.swift
//  jambitAcademy2020
//
//  Created by David Symhoven on 29.01.20.
//  Copyright © 2020 davidsymhoven. All rights reserved.
//

import Foundation
import FirebaseFirestore

struct Skill: Identifiable, Decodable {
    var id: Int?
    let name: String?
    let level: Int?

    init(with dict: [String: Any]) {
        self.name = dict["name"] as? String
        self.level = dict["level"] as? Int
        self.id = Int.random(in: 1..<1000)
    }

    init(name: String, level: Int) {
        self.name = name
        self.level = level
    }

    init?(snapshot: DocumentSnapshot) {
        guard let dict = snapshot.data() else {
            return nil
        }

        name = dict["name"] as? String
        level = dict["level"] as? Int
        id = Int.random(in: 1..<1000)
    }
}
