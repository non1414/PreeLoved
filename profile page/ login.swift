//
//   login.swift
//  profile page
//
//  Created by نوف بخيت الغامدي on 28/07/1444 AH.
//

import SwiftUI

struct _login: View {
    
    @State var login = ""
    
    var body: some View {
        NavigationView{
            
            ZStack{
                
                VStack{
                    
                    Text("Enter Mobile Number")
                        .bold()
                        .font(Font.system(size:20))
                        .padding(.leading, -130)
                    
                    TextField("05*******", text: $login)
                        .padding()
                        .frame(width: 317 ,height: 53)
                        .keyboardType(.decimalPad)
                        .overlay(
                            RoundedRectangle(cornerRadius: 9)
                                .stroke(Color.gray, lineWidth: 1))
                    
                    
                    
                    
                }
                .position(x:200, y:203)
                
                
                HStack{
                    Button  {
                    } label: {
                        NavigationLink(destination:_login2()) {
                            Text("Next")
                        }
                        .foregroundColor(.white)
                        .font(Font.system(size:24))
                        .frame(width: 329 ,height: 52)
                        .background(Color(red: 0.508, green: 0.449, blue: 0.476))
                        .cornerRadius (10)
                        
                        
                        
                    }
                }
                .position(x:200, y:426)
                
                
                
                
                
                
                
                
                
                
                
                
                
                
            }
            
        }
    }
}

struct _login_Previews: PreviewProvider {
    static var previews: some View {
        _login()
    }
}
