//
//  Contact.swift
//  SwiftUI-ContactList
//
//  Created by Kalabishka Ivan on 15.06.2021.
//

import SwiftUI

struct ContactInfo: View {
    let person: Person
    
    var body: some View {
        Form {
            UserPhoto()
            RowConfiguration(
                contact: person.phoneNumber,
                imageSystemName: "phone"
            )
            RowConfiguration(
                contact: person.email,
                imageSystemName: "envelope"
            )
        }
        .navigationTitle(person.fullName)
    }
}

struct Contact_Previews: PreviewProvider {
    static var previews: some View {
        ContactInfo(person: Person.getContactList().first!)
    }
}


