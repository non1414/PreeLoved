//
//  ContentView.swift
//  profile page
//
//  Created by نوف بخيت الغامدي on 18/07/1444 AH.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        ZStack {
            Image("drees")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .cornerRadius(11)
             
            Rectangle()
                .foregroundColor(.clear)
                .background(LinearGradient(gradient: Gradient(colors: [.clear, .black]), startPoint: .top, endPoint: .bottom))
                                           }
        .frame(width: 168, height: 245)
        .padding(.leading,17)
        
    }
    
}
  
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
