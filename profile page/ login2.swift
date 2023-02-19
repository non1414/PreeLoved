//
//   login2.swift
//  profile page
//
//  Created by نوف بخيت الغامدي on 28/07/1444 AH.
//

import SwiftUI

struct _login2: View {
   
        @State var isPresentingModal = false
        @State var login1 = ""
        @State var login2 = ""
        @State var login3 = ""
        @State var login4 = ""

        var body: some View {
            
            
            ZStack{
                
                VStack{
                    Image(systemName: "chevron.backward")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 17, height: 96)
                    
                    
                        .position(x:29, y:9)
                }
                
                
                VStack{
                    
                    Text("Enter Verification code")
                        .bold()
                        .font(Font.system(size:20))
                        .position(x:140, y:100)



                }
                
                VStack{
                    
                    TextField("", text: $login1)
                        .padding()
                        .keyboardType(.decimalPad)
                        .frame(width: 53 ,height: 53)
                        .overlay(
                            RoundedRectangle(cornerRadius: 9)
                                .stroke(Color.gray, lineWidth: 1))
                }
                .position(x:90, y:170)

                    
                VStack{
                    TextField("", text: $login2)
                        .padding()
                        .keyboardType(.decimalPad)
                        .frame(width: 53 ,height: 53)
                        .overlay(
                            RoundedRectangle(cornerRadius: 9)
                                .stroke(Color.gray, lineWidth: 1))
                }
                .position(x:170, y:170)

                

                
                VStack{
                    TextField("", text: $login3)
                        .padding()
                        .keyboardType(.decimalPad)
                        .frame(width: 53 ,height: 53)
                        .overlay(
                            RoundedRectangle(cornerRadius: 9)
                                .stroke(Color.gray, lineWidth: 1))
                }
                .position(x:250, y:170)

                
                VStack{
                    
                    TextField("", text: $login4)
                        .padding()
                        .keyboardType(.decimalPad)
                        .frame(width: 53 ,height: 53)
                        .overlay(
                            RoundedRectangle(cornerRadius: 9)
                                .stroke(Color.gray, lineWidth: 1))
                }
                .position(x:330, y:170)

                
                HStack{
                    Button  {
                    } label: {
                        HStack {
                            Text("Next")
                            
                                .foregroundColor(.white)
                                .font(Font.system(size:24))
                                .frame(width: 329 ,height: 52)
                                .background(Color(red: 0.508, green: 0.449, blue: 0.476))
                                .cornerRadius (10)
                            
                            
                        }
                    }
                }
                .position(x:200, y:426)

                
                
                Button  {
                    
                } label: {
                Text("Resend again?")
                .font(Font.system(size:24)) }
                .position(x:200, y:240)

                                 
                       
                
           }
        }
        }

struct _login2_Previews: PreviewProvider {
    static var previews: some View {
        _login2()
    }
}
