//
//  DemoSwiftUIApp.swift
//  Shared
//
//  Created by Mvestro on 16/03/2021.
//

import SwiftUI

@main
struct DemoSwiftUIApp: App {
    
    @State private var tracer = ContactTracer(contacts: [])
    
    var body: some Scene {
        WindowGroup {
            AppNavRootView(tracer: $tracer)
        }
    }
}
