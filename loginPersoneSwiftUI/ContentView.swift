//
//  ContentView.swift
//  loginPersoneSwiftUI
//
//  Created by Максим Гурков on 08.05.2022.
//

import SwiftUI

struct ContentView: View {
    
    @EnvironmentObject private var user: UserManager
    
    var body: some View {
        Group {
            if user.user.flag{
                InfoUserView()
            } else {
                LoginTextFieldView()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(UserManager())
    }
}
