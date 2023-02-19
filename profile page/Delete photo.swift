//
//  Delete photo.swift
//  profile page
//
//  Created by نوف بخيت الغامدي on 27/07/1444 AH.
//

import SwiftUI

struct Delete_photo: View {
    @State var sheet :Bool = false
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
                    Text("sara")
                        .bold()
                        .font(.system(size: 20))
                        
                            Button{
                                self.sheet.toggle()
                            } label: {
                                Image("drees")
                                    .resizable()
                                    .scaledToFill()
                                    .frame(width: 168, height: 245)
                                    .border(Color.white)
                                    .clipped()
                                    .padding()
                                    
                            }
                            .confirmationDialog("", isPresented: $sheet, titleVisibility: .visible) {
                                Button("Delete photo", role: .destructive) {
                                    print("Deleted")
                                }
                            }
                        }
                
                  
                }
            }
        }
    }

struct Delete_photo_Previews: PreviewProvider {
    static var previews: some View {
        Delete_photo()
    }
}
