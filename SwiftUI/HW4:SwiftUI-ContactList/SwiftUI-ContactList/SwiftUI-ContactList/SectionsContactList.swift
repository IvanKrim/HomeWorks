//
//  NumbersScreen.swift
//  SwiftUI-ContactList
//
//  Created by Kalabishka Ivan on 15.06.2021.
//

import SwiftUI

struct SectionsContactList: View {
    let contactList: [Person]
    
    var body: some View {
        NavigationView {
            List{
                ForEach(contactList) { contact in
                    Section(header: Text(contact.fullName)) {
                        RowConfiguration(
                            contact: contact.phoneNumber,
                            imageSystemName: "phone"
                        )
                        RowConfiguration(
                            contact: contact.email,
                            imageSystemName: "envelope"
                        )
                    }
                }
                .textCase(.none)
            }
            .navigationBarTitle("Contact List")
        }
    }
}

struct NumbersScreen_Previews: PreviewProvider {
    static var previews: some View {
        SectionsContactList(contactList: Person.getContactList())
    }
}
