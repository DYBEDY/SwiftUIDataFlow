//
//  UserManager.swift
//  stateAndDataFlow
//
//  Created by Roman on 28.02.2022.
//

import Foundation
import Combine


class UserManager: ObservableObject {
    @Published var isRegister = false
    var name = ""
}
