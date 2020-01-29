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

    init(name: String, job: String, phone: String, favoritePlace: String) {
        self.name = name
        self.job = job
        self.phone = phone
        self.favoritePlace = favoritePlace
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
        id = Int.random(in: 1..<1000)
    }
}
