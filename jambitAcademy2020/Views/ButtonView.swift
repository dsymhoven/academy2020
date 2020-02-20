//
//  ButtonView.swift
//  jambitAcademy2020
//
//  Created by David Symhoven on 20.02.20.
//  Copyright © 2020 davidsymhoven. All rights reserved.
//

import SwiftUI

struct ButtonView: View {
    var body: some View {
        HStack {
            Button(action: {
                log.debug("Button pressed")
            }) {
                Image("mail")
                .addCircle()
            }.padding()

            Button(action: {
                log.debug("Button pressed")
            }) {
                Image("schedule")
                .addCircle()
            }.padding()

            Button(action: {
                log.debug("Button pressed")
            }) {
                Image("phone_receiver")
                .addCircle()
            }.padding()
        }
    }
}

struct ButtonView_Previews: PreviewProvider {
    static var previews: some View {
        ButtonView()
            .previewLayout(.fixed(width: 300, height: 80))
    }
}



extension Image {
    func addCircle() -> some View {
        return self
            .resizable()
            .frame(width: 50, height: 50)
            .foregroundColor(.orange)
            .foregroundColor(.white)
            .padding(7)
            .overlay(
                RoundedRectangle(cornerRadius: 50)
                    .stroke(Color.orange, lineWidth: 2)
        )
    }
}
