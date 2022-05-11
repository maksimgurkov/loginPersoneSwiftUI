//
//  LogOutButtonView.swift
//  loginPersoneSwiftUI
//
//  Created by Максим Гурков on 11.05.2022.
//

import SwiftUI

struct LogOutButtonView: View {
    
    var action: () -> Void
    
    var body: some View {
        Button(action: {}) {
            Text("LogOut")
                .frame(width: 150, height: 40)
                .font(.title)
                .foregroundColor(.black)
                .background(.blue)
                .cornerRadius(15)
                .overlay(RoundedRectangle(cornerRadius: 15, style: .continuous).stroke(.white, lineWidth: 2))
                .shadow(color: .black, radius: 5)
                
        }
    }
}

struct LogOutButtonView_Previews: PreviewProvider {
    static var previews: some View {
        LogOutButtonView(action: {})
    }
}
