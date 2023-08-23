
//  StockSenseiApp.swift
//  StockSensei
//
//  Created by scholar on 8/1/23.

import SwiftUI


@main
struct StockSenseiApp: App {
    let persistenceController = PersistenceController.shared

    
    var body: some Scene {
        WindowGroup {
            NavigationView {
                ContentView(name: "", selection: "", numselection: 0.0, coinAmount:0.0)
                                    .environment(\.managedObjectContext, persistenceController.container.viewContext)
            }
            
        }
    }
}
 
