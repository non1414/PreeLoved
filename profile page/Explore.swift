//
//  Explore.swift
//  profile page
//
//  Created by نوف بخيت الغامدي on 22/07/1444 AH.
//

import SwiftUI

struct Explore: View {
    let colums = [GridItem(.flexible()),
                  GridItem(.flexible())]
    @State var searchText = ""
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
            .searchable(text: $searchText)
            .padding()
            .navigationTitle("Explore")
            .toolbar {
                Button{
                    
                } label: {
                    Image(systemName: "plus")
                }
            }
        }
    }
}
struct Explore_Previews: PreviewProvider {
    static var previews: some View {
        Explore()
    }
}
