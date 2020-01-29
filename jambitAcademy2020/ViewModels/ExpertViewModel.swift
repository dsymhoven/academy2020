//
//  ExpertViewModel.swift
//  jambitAcademy2020
//
//  Created by David Symhoven on 29.01.20.
//  Copyright © 2020 davidsymhoven. All rights reserved.
//

import Foundation
import Combine
import SwiftUI

final class ExpertViewModel: ObservableObject {

    @Published var experts = [Expert]()

    init() {
        Webservice().fetchExpertsFromWeb { experts in
            self.experts = experts
        }
    }
}
