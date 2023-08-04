
//  StockSenseiApp.swift
//  StockSensei
//
//  Created by scholar on 8/1/23.
//NOTES FOR FUTURE AVA/MICHELLE: i am not using the userdata class anymore, but since i refrence it so much i feel like it would be more work to delete it and i cant figure out how to delete it and make it work or keep and making it work. i dont need the class anymore tho and im not using it

import SwiftUI


class UserData: ObservableObject {
    @Published var name: String = ""
    @Published var selection: String = "N/A"
    @Published var numselection: Double = 100000.0
    
}

@main
struct StockSenseiApp: App {
    @StateObject private var userData = UserData()
    @Binding var coinAmount:Double
    var body: some Scene {
        WindowGroup {
            NavigationView {
                ContentView(name: userData.name, selection: userData.selection, numselection: userData.numselection, coinAmount:$coinAmount)
            }
            .environmentObject(userData)
        }
    }
}
 
