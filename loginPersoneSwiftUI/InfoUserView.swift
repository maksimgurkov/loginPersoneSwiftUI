//
//  InfoUserView.swift
//  loginPersoneSwiftUI
//
//  Created by Максим Гурков on 09.05.2022.
//

import SwiftUI

struct InfoUserView: View {
    @StateObject private var timer = TimeCounter()
    @EnvironmentObject private var userManager: UserManager
    
    var body: some View {
        VStack {
            Text("\(timer.counter)")
                .font(.largeTitle)
                .padding(.top, 50)
            Text("Привет \(userManager.user.name)")
                .padding(.top, 20)
            ButtonCountView(title: timer.buttonTitle, color: .red) {
                timer.starTimer()
            }
            Spacer()
            ButtonCountView(title: "Выход", color: .blue, action: {
                DataManager.shared.clear(userManager: userManager)
            })
                .padding(.bottom, 50)
        }
    }
}

struct InfoUserView_Previews: PreviewProvider {
    static var previews: some View {
        InfoUserView()
            .environmentObject(UserManager())
    }
}
