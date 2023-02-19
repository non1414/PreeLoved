//
//  startpage.swift
//  profile page
//
//  Created by نوف بخيت الغامدي on 28/07/1444 AH.
//

import SwiftUI

struct startpage: View {
    var body: some View {
        
        NavigationView{
            
            ZStack{
                
                Image("Background")
                    .resizable()
                    .ignoresSafeArea()
                    .padding(-20)
                VStack{
                    
                    
                    
                    Text("STYLE")
                        .fontWeight(.regular)
                        .foregroundColor(.black)
                        .font(Font.system(size:50))
                        .offset(y: -90)
                    
                    VStack{
                        Text("Welcome!")
                            .font(Font.system(size:30))
                        
                        Text("Let’s get started")
                        
                            .font(Font.system(size:30))
                        
                            .fontWeight(.light)
                            .foregroundColor(.black)
                        
                    }
                    .offset(y: -70)
                    
                    
                    HStack {
                        Button  {
                            
                        } label: {
                          //  NavigationLink(destination:PhoneNumber()){
                                Text("Create New Account")
                            }
                            
                            
                            
                            .foregroundColor(.white)
                            .font(Font.system(size:24))
                            .frame(width: 329 ,height: 52)
                            .background(Color(red: 0.508, green: 0.449, blue: 0.476))
                            .cornerRadius (10)
                        }
                    }
                    
                    
                    
                    
                    
                    
                    Text("OR")
                        .bold()
                        .foregroundColor(.black)
                        .font(Font.system(size:24))
                    
                    
                    
                    HStack {
                        Button  {
                        } label: {
                            //      NavigationLink(destination:login()){
                            Text("Login")
                            
                        }
                        
                        
                        .foregroundColor(.white)
                        .font(Font.system(size:24))
                        .frame(width: 329 ,height: 52)
                        .background(Color(red: 0.508, green: 0.449, blue: 0.476))
                        .cornerRadius (10)
                    }
                }
                
                
                .padding()
                
                
            }
            
        }
        
    }



struct startpage_Previews: PreviewProvider {
    static var previews: some View {
        startpage()
    }
}
