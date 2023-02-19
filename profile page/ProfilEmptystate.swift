//
//  ProfilEmptystate.swift
//  profile page
//
//  Created by نوف بخيت الغامدي on 24/07/1444 AH.
//

import SwiftUI

struct ProfilEmptystate: View {
    var body: some View {
        NavigationView {
            ScrollView {
                ZStack{
                    
                    
                    HStack {
                        Image("profile")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 120, height: 120)
                            .clipShape(Circle())
                            .navigationTitle("Profile")
                            .navigationBarTitleDisplayMode(.inline)
                        
                        Spacer()
                    }
                    
                    .position(x:330, y:70)
                    
                    HStack{
                        Text("Sara")
                            .bold()
                            .font(.system(size: 20))
                        
                            .position(x:190, y:150)
                    }
                    
                    
                    VStack{
                        
                        Image("EmptyState")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 250, height: 200)
                        
                        HStack{
                            Text("No images")
                                .bold()
                                .font(.system(size: 20))
                        }
                        
                        HStack{
                            Text("Start uploading products!")
                                .font(.system(size: 20))
                        }
                        
                        
                    }
                    .position(x:190, y:350)
                    
                    
                    
                    
                    HStack {
                        Button  {
                        } label: {
                            Text("Add Product")
                            
                            
                            
                            
                                .foregroundColor(.white)
                                .font(Font.system(size:24))
                                .frame(width: 329 ,height: 52)
                                .background(Color(red: 0.508, green: 0.449, blue: 0.476))
                                .cornerRadius (10)
                        }
                    }
                    .position(x:190, y:626)
                    
                }
                
            }
            
        }
    }
}

struct ProfilEmptystate_Previews: PreviewProvider {
    static var previews: some View {
        ProfilEmptystate()
    }
}
