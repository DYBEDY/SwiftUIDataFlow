//
//  stateAndDataFlowApp.swift
//  stateAndDataFlow
//
//  Created by Roman on 28.02.2022.
//

import SwiftUI

@main
struct StateAndDataFlowApp: App {
    private let user = DataManager.shared.loadUser()
    
    
    var body: some Scene {
        WindowGroup {
            StarterView()
                .environmentObject(UserManager(user: user))
        }
    }
}
