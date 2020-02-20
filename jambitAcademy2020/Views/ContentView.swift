//
//  ContentView.swift
//  jambitAcademy2020
//
//  Created by David Symhoven on 27.01.20.
//  Copyright © 2020 davidsymhoven. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            ExpertList()
            .tabItem {
                Image(systemName: "star.fill")
                Text("Experts")
            }

            SkillList()
            .tabItem {
                Image(systemName: "square.fill")
                Text("Skills")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
