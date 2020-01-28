//
//  ExpertList.swift
//  jambitAcademy2020
//
//  Created by David Symhoven on 27.01.20.
//  Copyright © 2020 davidsymhoven. All rights reserved.
//

import SwiftUI

let experts = [Expert(id: 1, name: "David Symhoven", job: "Scrum Master", phone: "666"),
               Expert(id: 2, name: "Daniel Benkmann", job: "Scrum Master", phone: "123"),
               Expert(id: 3, name: "Max Mustermann", job: "Software Architekt", phone: "987")]

struct ExpertList: View {
    var body: some View {
        NavigationView {
            List(experts) { expert in
                NavigationLink(destination: ExpertDetailView()) {
                    ExpertView(expert: expert)
                }
            }
            .navigationBarTitle(Text("Experts"))
        }
    }
}

struct ExpertList_Previews: PreviewProvider {
    static var previews: some View {
        ExpertList()
    }
}
