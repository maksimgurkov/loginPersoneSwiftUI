//
//  loginPersoneSwiftUIApp.swift
//  loginPersoneSwiftUI
//
//  Created by Максим Гурков on 08.05.2022.
//

import SwiftUI

@main
struct loginPersoneSwiftUIApp: App {
    
    private let user = DataManager.shared.loudUser()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(UserManager(user: user))
        }
    }
}
