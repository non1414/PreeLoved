//
//  information_.swift
//  profile page
//
//  Created by نوف بخيت الغامدي on 28/07/1444 AH.
//

import SwiftUI

struct information_: View {
    @State var firstname = ""
    @State var lastname = ""
    
    var body: some View {
        ZStack{
            
            VStack{
                Button  {
                    
                } label: {
                    Image(systemName: "person.crop.circle.badge.plus")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 137, height: 96)
                        .foregroundColor(Color.gray)
                    
                    
                        .position(x:190, y:70)
                }
            }
            
            
            TextField(" ", text: $firstname )
                .padding()
                .frame(width: 317 ,height: 53)
                .overlay(
                    RoundedRectangle(cornerRadius: 9)
                        .stroke(Color.gray, lineWidth: 1))
                .position(x:200, y:210)
            
            
            
            
            VStack{
                Text("First Name:")
                    .bold()
                    .position(x:90, y:160)
                
            }
            
            TextField(" ", text: $lastname )
                .padding()
                .frame(width: 317 ,height: 53)
                .overlay(
                    RoundedRectangle(cornerRadius: 9)
                        .stroke(Color.gray, lineWidth: 1))
            
                .position(x:200, y:310)
            
            VStack{
                Text("Last Name:")
                    .bold()
                    .position(x:90, y:260)
                
            }
            
            
            HStack{
                Button  {
                } label: {
                    HStack {
                        Text("Create Account ")
                        
                            .foregroundColor(.white)
                            .font(Font.system(size:24))
                            .frame(width: 329 ,height: 52)
                            .background(Color(red: 0.508, green: 0.449, blue: 0.476))
                            .cornerRadius (10)
                        
                        
                    }
                }
            }
            .position(x:200, y:426)
            
            
            
            
            
            
        }
    }
}



struct information__Previews: PreviewProvider {
    static var previews: some View {
        information_()
    }
}
