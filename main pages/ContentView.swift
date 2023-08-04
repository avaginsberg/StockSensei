//
//  ContentView.swift
//  StockSensei
//
//  Created by scholar on 8/1/23.
//

import SwiftUI
import CoreData
struct ContentView: View {
    @EnvironmentObject var userData: UserData
    @State var name:String
    @State var OwnAmzn = false
    @State var selection:String
    @State private var isOwnAmzn: Bool = false
    @State var numselection:Double = 100000
    @Binding var coinAmount:Double 
    var body: some View{
        //AMZN(ownAmzn: $isOwnAmzn, showButton: false)
        //Invest(ownAmzn: $isOwnAmzn)
        NavigationStack{
            VStack(){
                Text("Welcome to StockSensei")
                    .font(.largeTitle)
                Image("stocks")
                    .resizable(resizingMode: .stretch)
                    .aspectRatio(contentMode: .fit)
                HStack(){
                    NavigationLink(destination: login(name: $userData.name, selection: $userData.selection, numselection: $userData.numselection)) {
                                        Text("Login")
                                            .foregroundColor(Color.black)
                        
                    }//navlink closing
                    NavigationLink(destination:learn()){
                        Text("Learn")
                        
                    }//navlink closing
                    NavigationLink(destination:Funds(name:$name, selection:$selection, numselection:$numselection)){
                        Text("Funds")
                    }//navlink closing funds
                    NavigationLink(destination:Invest(ownAmzn:$isOwnAmzn, coinAmount:$coinAmount)){
                        Text("Invest")
                    }//navlink closing invest
                }//hstack closing
                
            }//vstack closing
            .navigationTitle("🏠")
            .navigationBarTitleDisplayMode(.inline)
            .navigationBarHidden(false)
        } //navstack closing
    }//view closing
}//struct closing
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(name: "John Doe", selection: "N/A", numselection: 100000.0, coinAmount:.constant(0.0))
            .environmentObject(UserData()) // Add the environment object for UserData
    }
}



