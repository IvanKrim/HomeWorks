//
//  ContentView.swift
//  SwiftUI-ContactList
//
//  Created by Kalabishka Ivan on 15.06.2021.
//

import SwiftUI

struct ContentView: View {
    private let contactList = Person.getContactList()
    
    var body: some View {
        TabView {
            ContactList(contactList: contactList)
                .tabItem {
                    Image(systemName: "person.crop.circle")
                    Text("Contacts")
                }
            
            SectionsContactList(contactList: contactList)
                .tabItem {
                    Image(systemName: "phone.circle")
                    Text("Numbers")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
