//
//  ExpertList.swift
//  jambitAcademy2020
//
//  Created by David Symhoven on 27.01.20.
//  Copyright © 2020 davidsymhoven. All rights reserved.
//

import SwiftUI

struct ExpertList: View {
    @ObservedObject var userData = UserData()

    var body: some View {
        NavigationView {
            List(userData.experts) { expert in
                NavigationLink(destination: ExpertDetailView(expert: expert)) {
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
