//
//  SplashScreen.swift
//  profile page
//
//  Created by نوف بخيت الغامدي on 28/07/1444 AH.
//

import SwiftUI

struct SplashScreen: View {
   
        @State private var isActive = false
        @State private var size = 0.1
        @State private var opacity = 0.5

        var body: some View {
            if isActive {
                startpage()
            } else {
                VStack {
                    ZStack {
                        
                        VStack {
                            Image("pic")
                                .scaleEffect(size)
                                .opacity(opacity)
                                .ignoresSafeArea()
                            
                        }
                        
                        Image("style")
                            .resizable()
                            .ignoresSafeArea()
                            .scaleEffect(size)
                            .opacity(opacity)
                            .onAppear {
                                withAnimation(.easeIn(duration: 2)) { self.size = 1.0
                                    self.opacity = 1.0
                                }
                            }
                    }
                    
                }
                .onAppear {
                    DispatchQueue.main.asyncAfter(deadline: .now() + 3.0) {
                        withAnimation {
                            self.isActive = true}
                    }
                }
            }
        }
        }


struct SplashScreen_Previews: PreviewProvider {
    static var previews: some View {
        SplashScreen()
    }
}
