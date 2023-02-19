//
//  Wishlist1.swift
//  profile page
//
//  Created by نوف بخيت الغامدي on 25/07/1444 AH.
//

import SwiftUI

struct Wishlist1: View {
    let colums = [GridItem(.flexible()),
                  GridItem(.flexible())]
   
    var body: some View {
        NavigationView {
            ScrollView {
                LazyVGrid(columns: colums , spacing: 0) {
                    ForEach(0 ..< 2, id: \.self) { index in
                        VStack {
                           
                            Image("wedding")
                                .resizable()
                                .scaledToFill()
                                .frame(width: 168, height: 245)
                                .border(Color.white)
                                .clipped()
                            Image("drees")
                                .resizable()
                                .scaledToFill()
                                .frame(width: 168, height: 245)
                                .border(Color.white)
                                .clipped()
                            Text("Floral Dress Ladies Elegant Dres")
                            Image("BlackDress")
                                .resizable()
                                .scaledToFill()
                                .frame(width: 168, height: 245)
                                .border(Color.white)
                                .clipped()
                            Text("Black One-Shoulder Cocktail Tulle Dress")
                            Image("Bag")
                                .resizable()
                                .scaledToFill()
                                .frame(width: 168, height: 245)
                                .border(Color.white)
                                .clipped()
                        }
                    }
                }
            }
          
            .padding()
            .navigationTitle("Wishlist")
            
        }
    }
}
struct Wishlist1_Previews: PreviewProvider {
    static var previews: some View {
        Wishlist1()
    }
}
