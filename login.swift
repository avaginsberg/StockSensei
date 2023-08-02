//
//  login.swift
//  StockSensei
//
//  Created by scholar on 8/1/23.
//

import SwiftUI

struct login: View {
    @State var name: String
    @State private var selection = "N/A"
    let salaries = ["N/A", "$40,000", "$60,000", "$80,000", "$100,000", "$120,000+"]
    var body: some View {
        ZStack{
            Color(red: 0.678, green: 0.847, blue: 0.902)
                .ignoresSafeArea()

            VStack{
                Text("Login")
                HStack{
                    Text("Name:")
                        .padding(.leading)
                    TextField("Your name here", text: $name)
                    
                }//hstack closing
                Picker("Select a paint salary", selection: $selection) {
                    ForEach(salaries, id: \.self) {
                        Text($0)
                    }
                }
                .pickerStyle(.menu)
                
                Text("Selected salary: \(selection)")
            }//Vstack closing
        }//Zstack closing
    }//some view closing
}//struct closing

struct login_Previews: PreviewProvider {
    static var previews: some View {
        login(name:"")
    }
}
