//
//  Add product.swift
//  profile page
//
//  Created by نوف بخيت الغامدي on 26/07/1444 AH.
//

import SwiftUI

struct Add_product: View {
    let colums = [GridItem(.flexible()),
                  GridItem(.flexible())]
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
        NavigationView {
            ScrollView {
                LazyVGrid(columns: colums , spacing: 0) {
                    ForEach(0 ..< 2, id: \.self) { index in
                        VStack {
                            ZStack {
                                
                                
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
                                                .overlay(
                                            
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
                                            
                                        })
                                    
                            }
                        }
                    }
                    .padding()
                    .navigationTitle("Wishlist")
                }
            }
        }
    }
}

struct Add_product_Previews: PreviewProvider {
    static var previews: some View {
        Add_product()
    }
}
