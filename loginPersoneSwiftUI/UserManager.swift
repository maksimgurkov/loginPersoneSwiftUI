//
//  UserManager.swift
//  loginPersoneSwiftUI
//
//  Created by Максим Гурков on 08.05.2022.
//

import Combine

class UserManager: ObservableObject {
    
    @Published var user = User()
    
    init() {}
    
    init(user: User) {
        self.user = user
    }

}

struct User: Codable {
    var name = ""
    var flag = false
}
