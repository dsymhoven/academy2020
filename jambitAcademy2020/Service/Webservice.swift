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
    let reference = Firestore.firestore()

    func fetchExpertsFromWeb(completion: @escaping ([Expert]) -> ()) {
        var experts = [Expert]()
        reference.collection("experts").addSnapshotListener { (snapshot, error) in
            experts.removeAll()
            for document in snapshot!.documents {
                log.debug("received document: \(document.data())")
                let expert = Expert(snapshot: document)
                experts.append(expert!)
            }
            completion(experts)
        }
    }

    func fetchSkillsFromWeb(completion: @escaping ([Skill]) -> ()) {
        var skills = [Skill]()
        reference.collection("skills").addSnapshotListener { (snapshot, error) in
            skills.removeAll()
            for document in snapshot!.documents {
                log.debug("received document: \(document.data())")
                let skill = Skill(snapshot: document)
                skills.append(skill!)
            }
            completion(skills)
        }
    }
}
