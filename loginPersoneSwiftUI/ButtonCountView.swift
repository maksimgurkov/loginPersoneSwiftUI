//
//  ButtonCountView.swift
//  loginPersoneSwiftUI
//
//  Created by Максим Гурков on 11.05.2022.
//

import SwiftUI

struct ButtonCountView: View {
    
    var title: String
    var color: Color
    var action: () -> Void
    
    var body: some View {
        Button(action: action) {
            Text(title)
                .font(.title)
                .frame(width: 200, height: 50)
                .foregroundColor(.white)
                .background(color)
                .cornerRadius(15)
                .overlay(RoundedRectangle(cornerRadius: 15, style: .continuous).stroke(.white, lineWidth: 1))
                .shadow(color: .gray, radius: 5)
                
        }
        
        
        
    }
}

struct ButtonCountView_Previews: PreviewProvider {
    static var previews: some View {
        ButtonCountView(title: "Запуск", color: .red, action: {})
    }
}
