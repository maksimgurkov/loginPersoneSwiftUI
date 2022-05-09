//
//  InfoUserView.swift
//  loginPersoneSwiftUI
//
//  Created by Максим Гурков on 09.05.2022.
//

import SwiftUI

struct InfoUserView: View {
    
    @EnvironmentObject private var userName: UserManager
    
    var body: some View {
        VStack {
            Text(userName.name)
        }
    }
}

struct InfoUserView_Previews: PreviewProvider {
    static var previews: some View {
        InfoUserView()
            .environmentObject(UserManager())
    }
}
