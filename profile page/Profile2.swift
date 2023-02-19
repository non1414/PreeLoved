//
//  Profile2.swift
//  profile page
//
//  Created by نوف بخيت الغامدي on 18/07/1444 AH.
//

import SwiftUI

struct Profile2: View {
    let colums = [GridItem(.flexible()),
                  GridItem(.flexible())]
    let imageDimension = UIScreen.main.bounds.width / 2
    var body: some View {
        ScrollView {
            VStack {
                //nav bar
                HStack {
                    Image(systemName: "chevron.left")
                        .font(.title2)
                    Spacer()
                        .navigationTitle("Profile")
                        .padding()
                    
//                    Text("Profile")
//                        .font(.subheadline)
//                        .bold()
                }
            }
            Spacer()
            //profile image = name
            
            HStack {
                VStack {
                    Image("profile")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 120, height: 120)
                        .clipShape(Circle())
                    //  Spacer()
                    VStack (spacing: 2 ) {
                        
                        Text("sara").font(.system(size: 18)).foregroundColor(.black)
                            .padding(.top,4)
                    }
                    Spacer()
                    
                    //ractangle
                    Rectangle()
                        .fill(Color.gray.opacity(0.6))
                        .frame(height: 0.5)
                }
            }
            //grid
            LazyVGrid(columns: colums , spacing: 0) {
                ForEach(0 ..< 5, id: \.self) { index in
                    Image("drees")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 168, height: 245)
                        .border(Color.white)
                        .clipped()
                    
                }
                
            }
            .padding()
        }
    }
}

struct Profile2_Previews: PreviewProvider {
    static var previews: some View {
        Profile2()
    }
}
