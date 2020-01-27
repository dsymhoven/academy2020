//
//  ExpertDetailView.swift
//  jambitAcademy2020
//
//  Created by David Symhoven on 27.01.20.
//  Copyright © 2020 davidsymhoven. All rights reserved.
//

import SwiftUI

struct ExpertDetailView: View {
    var body: some View {
        HStack {
            VStack(alignment: .leading) {
                Text(experts[0].name)
                Text(experts[0].job).font(.subheadline).foregroundColor(.gray)
                Text(experts[0].phone).font(.subheadline).foregroundColor(.gray)
            }

            VStack(alignment: .trailing) {
                Text("Swift")
                Text("iOS")
                Text("RxSwift")
            }

            VStack {
                HStack {
                    Image(systemName: "star.fill").foregroundColor(.yellow)
                    Image(systemName: "star.fill").foregroundColor(.yellow)
                    Image(systemName: "star.fill").foregroundColor(.yellow)
                    Image(systemName: "star.fill").foregroundColor(.yellow)
                    Image(systemName: "star.fill")
                }

                HStack {
                    Image(systemName: "star.fill").foregroundColor(.yellow)
                    Image(systemName: "star.fill").foregroundColor(.yellow)
                    Image(systemName: "star.fill").foregroundColor(.yellow)
                    Image(systemName: "star.fill").foregroundColor(.yellow)
                    Image(systemName: "star.fill")
                }

                HStack {
                    Image(systemName: "star.fill").foregroundColor(.yellow)
                    Image(systemName: "star.fill").foregroundColor(.yellow)
                    Image(systemName: "star.fill").foregroundColor(.yellow)
                    Image(systemName: "star.fill")
                    Image(systemName: "star.fill")
                }
            }
        }
        .padding()
    }
}

struct ExpertDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ExpertDetailView()
    }
}
