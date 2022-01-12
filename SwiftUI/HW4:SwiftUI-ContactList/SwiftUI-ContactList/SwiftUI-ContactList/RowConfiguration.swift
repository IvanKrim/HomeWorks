//
//  RowConfiguration.swift
//  SwiftUI-ContactList
//
//  Created by Kalabishka Ivan on 16.06.2021.
//

import SwiftUI

struct RowConfiguration: View {
    let contact: String
    let imageSystemName: String
    
    var body: some View {
        HStack{
            Image(systemName: imageSystemName)
                .foregroundColor(.blue)
            
            Text(contact)
        }
    }
}

struct RowConfiguration_Previews: PreviewProvider {
    static var previews: some View {
        RowConfiguration(contact: "Phone", imageSystemName: "phone")
    }
}
