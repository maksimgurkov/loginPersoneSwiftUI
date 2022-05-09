//
//  loginPersoneSwiftUIApp.swift
//  loginPersoneSwiftUI
//
//  Created by Максим Гурков on 08.05.2022.
//

import SwiftUI

@main
struct loginPersoneSwiftUIApp: App {
    
    @StateObject private var userManager = UserManager()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(userManager)
        }
    }
}
