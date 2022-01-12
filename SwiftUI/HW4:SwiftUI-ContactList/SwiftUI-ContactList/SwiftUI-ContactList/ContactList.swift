//
//  ContactsScreen.swift
//  SwiftUI-ContactList
//
//  Created by Kalabishka Ivan on 15.06.2021.
//

import SwiftUI

struct ContactList: View {
    let contactList: [Person]
    
    var body: some View {
        NavigationView {
            List(contactList) { person in
                NavigationLink(
                    destination: ContactInfo(person: person)) {
                    Text(person.fullName)
                }
            }
            .navigationBarTitle("Contact List")
        }
    }
}

struct ContactsScreen_Previews: PreviewProvider {
    static var previews: some View {
        ContactList(contactList: Person.getContactList())
    }
}
