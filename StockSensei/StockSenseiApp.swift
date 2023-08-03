//
//  StockSenseiApp.swift
//  StockSensei
//
//  Created by scholar on 8/1/23.
//

import SwiftUI

@main
struct StockSenseiApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView(name:.constant("ava"), selection:.constant("N/A"), numselection:.constant(100000))
        }
    }
}
