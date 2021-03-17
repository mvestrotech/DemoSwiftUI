//
//  ContentView.swift
//  Shared
//
//  Created by Mvestro on 16/03/2021.
//

import SwiftUI

struct ContentView: View {

    @State private var name: String = ""
    @State private var tracer = ContactTracer(contacts: [])

    var body: some View {
        VStack {
            HStack {
                TextField("Contact name", text: $name)
                Button("Valider") {
                    let newContact = Contact(name: name, date: Date())
                    tracer.add(contact: newContact)
                    print(tracer.contacts)
                }
            }.padding()
            Text(name)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
        }
    }
}
