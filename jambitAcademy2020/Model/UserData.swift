//
//  UserData.swift
//  jambitAcademy2020
//
//  Created by David Symhoven on 29.01.20.
//  Copyright © 2020 davidsymhoven. All rights reserved.
//

import Foundation
import Combine
import FirebaseFirestore

final class UserData: ObservableObject {
    let reference = Firestore.firestore().collection("Experts")
    
    @Published var experts = [Expert]()

//    Expert(id: 1, name: "David Symhoven", job: "Scrum Master", phone: "666", favoritePlace: "Sebensee"),
//    Expert(id: 2, name: "Daniel Benkmann", job: "Scrum Master", phone: "123", favoritePlace: "TurtleRock"),
//    Expert(id: 3, name: "Max Mustermann", job: "Software Architekt", phone: "987", favoritePlace: "Space")]

    func fetchExpertsFromWeb() {
        reference.addSnapshotListener { (snapshot, error) in
            self.experts.removeAll()
            for document in snapshot!.documents {
                let expert = Expert(snapshot: document)
                self.experts.append(expert!)
            }
        }
    }

    init() {
        fetchExpertsFromWeb()
    }
}
