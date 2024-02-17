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
            
            VStack(alignment: .center){
                
                Spacer()
                
                Image("app_logo").resizable().scaledToFill().frame(width: 64, height: 64).padding(.bottom, 8)
                
                Text("Welcome\nto our store")
                    .font(.customfont(.semibold, fontSize: 40))
                    .foregroundColor(.white)
                    .multilineTextAlignment(.center).padding(.bottom,8)
                
                Text("Get your order in one hours").font(.customfont(.semibold, fontSize: 16)).foregroundColor(.white.opacity(0.8)).multilineTextAlignment(.center).padding(.bottom, 24)
                
                RoundButton(title: "Get Started")
                
                Spacer().frame(height: 64)
            }.padding(.horizontal, 24)
            
            
        }.ignoresSafeArea()
    }
}

#Preview {
    WelcomeView()
}
