//
//  LogOut.swift
//  profile page
//
//  Created by نوف بخيت الغامدي on 27/07/1444 AH.
//

import SwiftUI

struct LogOut: View {
    @State var showingAlert :Bool = false
    var body: some View {
        NavigationView {
            ScrollView {
                VStack {
                    Image("profile")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 120, height: 120)
                        .clipShape(Circle())
                        .navigationTitle("Profile")
                        .navigationBarTitleDisplayMode(.inline)
                        .toolbar {
                            Button{
                                self.showingAlert.toggle()
                            } label: {
                                Image(systemName: "ellipsis")
                                    .foregroundColor(.black)
                            }
                            .alert(isPresented: $showingAlert){
                               Alert(
                                title: Text ("Are you sure?"),
                               message: Text("Are you sure you want to Log out?"),
                                     primaryButton: .destructive(Text("Log out")) {
                                   
                               },
                                     secondaryButton: .cancel() {
                                   print("log out")
                               } )
                            }
                        }
                    Text("sara")
                        .bold()
                        .font(.system(size: 20))
                }
            }
        }
    }
}

struct LogOut_Previews: PreviewProvider {
    static var previews: some View {
        LogOut()
    }
}
