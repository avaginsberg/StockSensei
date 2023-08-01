//
//  ContentView.swift
//  StockSensei
//
//  Created by scholar on 8/1/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View{
        NavigationStack{
            VStack(){
                Text("Welcome to StockSensei")
                    .font(.largeTitle)
                Image("stocks")
                    .resizable(resizingMode: .stretch)
                    .aspectRatio(contentMode: .fit)
                HStack(){
                    NavigationLink(destination: login()) {
                        Text("Login")
                            .foregroundColor(Color.black)
                    
                    }//navlink closing
                    NavigationLink(destination:learn()){
                        Text("Learn")
                        
                    }//navlink closing
                    NavigationLink(destination:Funds()){
                        Text("Funds")
                    }//navlink closing funds
                    NavigationLink(destination:Invest()){
                        Text("Invest")
                    }//navlink closing invest
                }//hstack closing
                
            }//vstack closing
        } //zstack closing
    }//view closing
}//struct closing

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}