//
//  UserPhoto.swift
//  SwiftUI-ContactList
//
//  Created by Kalabishka Ivan on 16.06.2021.
//

import SwiftUI

struct UserPhoto: View {
    
    var body: some View {
        HStack{
            Spacer()
            
            Image(systemName:"person.fill")
                .resizable()
                .frame(
                    width: UIScreen.main.bounds.width / 3,
                    height: UIScreen.main.bounds.width / 3
                )
                .padding()
            
            Spacer()
        }
    }
}

struct UserPhoto_Previews: PreviewProvider {
    static var previews: some View {
        UserPhoto()
    }
}
