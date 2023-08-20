
//  StockSenseiApp.swift
//  StockSensei
//
//  Created by scholar on 8/1/23.
//NOTES FOR FUTURE AVA/MICHELLE: i am not using the userdata class anymore, but since i refrence it so much i feel like it would be more work to delete it and i cant figure out how to delete it and make it work or keep and making it work. i dont need the class anymore tho and im not using it

import SwiftUI

//class UserData: ObservableObject {
//    @Published var name: String = ""
//    @Published var selection: String = "N/A"
//    @Published var numselection: Double = 100000.0
//    init(){}
//}

@main
struct StockSenseiApp: App {
//    init() {
//        self.name = $name
//        self.selection = ""
//        self.numselection = 0.0
//        self.coinAmount = 0.0
//    }
//
   // @StateObject private var userData = UserData()
    @State private var name: String = "" // Use @State instead of @Binding
       @State private var selection: String = ""
       @State private var numselection: Double = 0.0
       @State private var coinAmount: Double = 0.0
    
    var body: some Scene {
        WindowGroup {
            NavigationView {
                ContentView(name: "", selection: "", numselection: 0.0, coinAmount: .constant(0.0))
            }
            //.environmentObject(userData)
        }
    }
}
 
