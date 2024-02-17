//
//  WelcomeView.swift
//  onlineShopSwiftUI
//
//  Created by Hong Duc on 03/02/2024.
//

import SwiftUI

struct WelcomeView: View {
    var body: some View {
        ZStack{
            Image("welcome_bg").resizable().scaledToFill().frame(width: .screenWidth, height: .screenHeight)
            
            VStack{
                Image("app_logo")
                
                Text("Welcome\nto our store")
                    .font(.customfont(.semibold, fontSize: 50))
                    .foregroundColor(.white)
                    .multilineTextAlignment(.center)
            }
            
           
        }.ignoresSafeArea()
        
    }
}

#Preview {
    WelcomeView()
}
