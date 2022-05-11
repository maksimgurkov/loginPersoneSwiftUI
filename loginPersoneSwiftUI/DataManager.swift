//
//  DataManager.swift
//  loginPersoneSwiftUI
//
//  Created by Максим Гурков on 11.05.2022.
//

import SwiftUI

class DataManager {
    
    static let shared = DataManager()
    
    @AppStorage("user") private var userData: Data?
    
    private init() {}
    
    func save(user: User) {
        userData = try? JSONEncoder().encode(user)
    }
    
    func loudUser() -> User {
        guard let user = try? JSONDecoder().decode(User.self, from: userData ?? Data()) else { return User() }
        return user
    }
    
    func clear(userManager: UserManager) {
        userManager.user.flag = false
        userManager.user.name = ""
        userData = nil
        
    }
    
}
