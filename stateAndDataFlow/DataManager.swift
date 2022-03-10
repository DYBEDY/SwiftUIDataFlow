//
//  DataManager.swift
//  stateAndDataFlow
//
//  Created by Roman on 10.03.2022.
//

import SwiftUI

class DataManager {
    static let shared = DataManager()
    
    @AppStorage("user") private var userData: Data?
    
    private init() {}
    
    func saveUser(user: User) {
        userData = try? JSONEncoder().encode(user)
    }
    
    func loadUser() -> User {
        guard let user = try? JSONDecoder().decode(User.self, from: userData ?? Data()) else { return User() }
        return user
    }
    
    func clear(userMangar: UserManager) {
        userMangar.user.isRegistered = false
        userMangar.user.name = ""
        userData = nil
    }
    
}
