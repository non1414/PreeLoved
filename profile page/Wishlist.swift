//
//  Wishlist.swift
//  profile page
//
//  Created by نوف بخيت الغامدي on 22/07/1444 AH.
//

import SwiftUI

struct Wishlist: View {
    @State var animate = false
    @State var likeAnimation = false
    @State var isLiked = false
    let duration: Double = 0.4
 
    func performAnimation() {
        DispatchQueue.main.asyncAfter(deadline: .now() + .milliseconds(1500)) {
            likeAnimation = false
        }
    }
    var body: some View {
        VStack {
            
                Image("drees")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 400, height: 400)
            
                Button(action: {
                    self.animate = true
                    DispatchQueue.main.asyncAfter(deadline: .now()  + self.duration, execute: {
                        self.animate = false
                        self.isLiked.toggle()
                           
                    })
                    
                } ){
                   
                    Image(systemName: isLiked ?
                          "heart.fill": "heart")
                    .imageScale(.large)
                    .foregroundColor(isLiked ? .black: .black)
                    .frame(maxWidth: .infinity,maxHeight: .infinity,alignment: .topTrailing)
                
                }.padding()
            
        }
    }
}

struct Wishlist_Previews: PreviewProvider {
    static var previews: some View {
        Wishlist()
    }
}
