//
//  ContentView.swift
//  StockSensei
//
//  Created by scholar on 8/1/23.
//

import SwiftUI
import CoreData
struct ContentView: View {
    @Binding var name:String
    @State var OwnAmzn = false
    @Binding var selection:String
    @State private var isOwnAmzn: Bool = false
    var body: some View{
        AMZN(ownAmzn: $isOwnAmzn)
        NavigationStack{
            VStack(){
                Text("Welcome to StockSensei")
                    .font(.largeTitle)
                Image("stocks")
                    .resizable(resizingMode: .stretch)
                    .aspectRatio(contentMode: .fit)
                HStack(){
                    NavigationLink(destination: login(name:"")) {
                        Text("Login")
                            .foregroundColor(Color.black)
                        
                    }//navlink closing
                    NavigationLink(destination:learn()){
                        Text("Learn")
                        
                    }//navlink closing
                    NavigationLink(destination:Funds(name:$name, selection:$selection)){
                        Text("Funds")
                    }//navlink closing funds
                    NavigationLink(destination:Invest()){
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

var previews: some View {
    ContentView(name:.constant("ava"), OwnAmzn:true, selection:.constant("N/A"))
    }

