//
//  SkillList.swift
//  jambitAcademy2020
//
//  Created by David Symhoven on 18.02.20.
//  Copyright © 2020 davidsymhoven. All rights reserved.
//

import SwiftUI

struct SkillList: View {

    @ObservedObject var skillViewModel = SkillViewModel()
    @State var click = false

    var body: some View {
        NavigationView() {
            List(skillViewModel.skills) { skill in
                SkillView(skill: skill)
                    .onTapGesture {
                        self.click = true
                }
                .actionSheet(isPresented: self.$click) {
                    ActionSheet(title: Text("Whatever"),
                                message: Text("Message"),
                                buttons: [
                                    ActionSheet.Button.default(Text("Button1")) {
                                        log.debug("button1 pressed")
                                    },
                                    ActionSheet.Button.default(Text("Button2")),
                                    ActionSheet.Button.default(Text("Button3")),
                                    ActionSheet.Button.cancel()
                    ])
                }
            }
            .navigationBarTitle(Text("Skills"))
        }
    }
}

struct SkillList_Previews: PreviewProvider {
    static var previews: some View {
        SkillList()
    }
}
