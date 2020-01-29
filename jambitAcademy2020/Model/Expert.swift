//
//  Expert.swift
//  jambitAcademy2020
//
//  Created by David Symhoven on 27.01.20.
//  Copyright © 2020 davidsymhoven. All rights reserved.
//

import Foundation
import FirebaseFirestore

struct Expert: Identifiable, Decodable {
    var id: Int

    let name: String?
    let job: String?
    let phone: String?
    let favoritePlace: String?
    var skills: [Skill]?

    init(name: String, job: String, phone: String, favoritePlace: String) {
        self.name = name
        self.job = job
        self.phone = phone
        self.favoritePlace = favoritePlace
        self.skills = []
        self.id = Int.random(in: 1..<1000)
    }
    
    init?(snapshot: DocumentSnapshot) {
        guard let dict = snapshot.data() else {
            return nil
        }

        name = dict["name"] as? String
        job = dict["job"] as? String
        phone = dict["phone"] as? String
        favoritePlace = dict["favoritePlace"] as? String
        skills = [Skill]()
        if let array = dict["skills"] as? [[String: Any]] {
            for dict in array {
                let skill = Skill(with: dict)
                skills?.append(skill)
            }
        }
        id = Int.random(in: 1..<1000)
    }
}
