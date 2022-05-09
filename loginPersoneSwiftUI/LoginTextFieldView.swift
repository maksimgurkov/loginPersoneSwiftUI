//
//  LoginTextFieldView.swift
//  loginPersoneSwiftUI
//
//  Created by Максим Гурков on 08.05.2022.
//

import SwiftUI

struct LoginTextFieldView: View {
    
    @State private var userName = ""
    @EnvironmentObject private var user: UserManager
    
    var body: some View {
        VStack {
            HStack {
                TextField("Ввести имя", text: $userName)
                    .multilineTextAlignment(.center)
                Text("\(characterCounters())")
                    .foregroundColor(colorCounter())
            }
            .padding(.horizontal, 70)
            Button(action: { registerUser() }) {
                Image(systemName: "checkmark.circle")
                Text("OK")
            }
            .disabled(activationBotton())
        }
    }
    
    private func registerUser() {
        if !userName.isEmpty {
            user.name = userName
            user.isRegistered.toggle()
        }
    }
    private func characterCounters() -> Int {
        var count = 0
        count = userName.count
        return count
    }
    
    private func colorCounter() -> Color {
        var color = Color(.gray)
        if userName.count < 3 {
            color = .red
        } else {
            color = .green
        }
        return color
    }
    
    private func activationBotton() -> Bool {
        var flag = true
        if userName.count < 3 {
            flag = true
        } else {
            flag.toggle()
        }
        return flag
    }
}

struct LoginTextFieldView_Previews: PreviewProvider {
    static var previews: some View {
        LoginTextFieldView()
    }
}
