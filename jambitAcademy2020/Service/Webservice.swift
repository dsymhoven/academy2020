//
//  Webservice.swift
//  jambitAcademy2020
//
//  Created by David Symhoven on 29.01.20.
//  Copyright © 2020 davidsymhoven. All rights reserved.
//

import Foundation
import FirebaseFirestore

class Webservice {
    let reference = Firestore.firestore().collection("Experts")

    func fetchExpertsFromWeb(completion: @escaping ([Expert]) -> ()) {
        var experts = [Expert]()
        reference.addSnapshotListener { (snapshot, error) in
            experts.removeAll()
            for document in snapshot!.documents {
                let expert = Expert(snapshot: document)
                experts.append(expert!)
            }
            completion(experts)
        }
    }
}
