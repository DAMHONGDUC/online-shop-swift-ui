//
//  RoundButton.swift
//  onlineShopSwiftUI
//
//  Created by Hong Duc on 17/02/2024.
//

import SwiftUI

struct RoundButton: View {
    @State var title: String = "Title"
    @State private var isPressed = false
    
    
    var body: some View {
        Button(action: {
            print("Button tapped")
        }) {
            Text(title).font(.customfont(.semibold, fontSize: 18))
                .foregroundColor(.white)
                .multilineTextAlignment(.center)
                .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
        }
        .frame(minWidth: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, maxWidth: .infinity, minHeight: 60, maxHeight: 60)
        .background(Color.primaryApp.opacity(isPressed ? 0.7 : 1))
        .cornerRadius(50)
        .onLongPressGesture(minimumDuration: 0.1, pressing: { pressing in
            withAnimation {
                isPressed = pressing
            }
        }, perform: {})
    }
}

#Preview {
    RoundButton()
}
