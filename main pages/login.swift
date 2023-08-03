//
//  login.swift
//  StockSensei
//
//  Created by scholar on 8/1/23.
//

import SwiftUI
import CoreData
struct login: View {
    @State var name: String
    @State var selection = "N/A"
    let salaries = ["N/A", "$40,000", "$60,000", "$80,000", "$100,000", "$120,000+"]
    
    var body: some View {
        ZStack{
            Color(red: 0.827, green: 0.827, blue: 0.827)
                .ignoresSafeArea()
            
            VStack{
                Text("Login")
                    .font(.largeTitle)
                    .padding(.top, 15.0)
                HStack{
                    Text("Name:")
                        .font(.title2)
                        .padding(.leading, 80.0)
                    
                    TextField("Your name here", text: $name)
                    
                }//hstack closing
                HStack{
                    Text("Select your salary")
                        .font(.title2)
                    Picker("Select a paint salary", selection: $selection) {
                        ForEach(salaries, id: \.self) {
                            Text($0)
                        }//for each closing
                    }//picker closing
                    .pickerStyle(.menu)
                }//hstack 2 closing
                Text("Selected salary: \(selection)")
                    .font(.title2)
                Button("Enter"){
                    
                }
            }//some view closing
        }//struct closing
        

    }
}




struct login_Previews: PreviewProvider {
    static var previews: some View {
        login(name:"")
    }
}
