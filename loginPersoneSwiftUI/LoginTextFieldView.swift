//
//  LoginTextFieldView.swift
//  loginPersoneSwiftUI
//
//  Created by Максим Гурков on 08.05.2022.
//

import SwiftUI

struct LoginTextFieldView: View {
    
    @EnvironmentObject private var userManager: UserManager
    
    var body: some View {
        VStack {
            HStack {
                TextField("Ввести имя", text: $userManager.user.name)
                    .multilineTextAlignment(.center)
                Text("\(userManager.user.name.count)")
                    .foregroundColor(userManager.user.name.count < 3 ? .red : .green)
            }
            .padding(.horizontal, 70)
            Button(action: { registerUser() }) {
                Image(systemName: "checkmark.circle")
                Text("OK")
            }
            .disabled(userManager.user.name.count < 3)
        }
    }
    
    private func registerUser() {
        if !userManager.user.name.isEmpty {
            userManager.user.flag.toggle()
            DataManager.shared.save(user: userManager.user)
        }
    }
}

struct LoginTextFieldView_Previews: PreviewProvider {
    static var previews: some View {
        LoginTextFieldView()
            .environmentObject(UserManager())
    }
}
