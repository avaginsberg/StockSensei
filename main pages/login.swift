////
////  login.swift
////  StockSensei
////
////  Created by scholar on 8/1/23.
////
//
//

import SwiftUI
import CoreData

struct login: View {
    @Binding var name:String
    @Binding var selection: String
    @Binding var numselection: Double
    @Environment(\.managedObjectContext) private var viewContext
    let salaries = ["N/A", "$40,000", "$60,000", "$80,000", "$100,000", "$120,000+"]
    let context: NSManagedObjectContext

    var body: some View {
        ZStack {
            Color(red: 0.827, green: 0.827, blue: 0.827)
                .ignoresSafeArea()
            
            VStack {
                Text("Login")
                    .font(.largeTitle)
                    .padding(.top, 15.0)
                HStack {
                    Text("Name:")
                        .font(.title2)
                        .padding(.leading, 80.0)
                    TextField("Your name here", text:$name)
                }
                HStack {
                    Text("Select your salary")
                        .font(.title2)
                    Picker("Select a paint salary", selection: $selection) {
                        ForEach(salaries, id: \.self) {
                            Text($0)
                        }
                    }
                    .pickerStyle(.menu)
                }
                Text("Selected salary: \(selection)")
                    .font(.title2)
                Button("Enter") {
                    if selection == "N/A" {
                        numselection = 100000.0
                    } else if selection == "$40,000" {
                        numselection = 40000.0
                    }else if selection == "$60,000" {
                        numselection = 60000.0
                    } else if selection == "$80,000" {
                        numselection = 80000.0
                    } else if selection == "$100,000" {
                        numselection = 100000.0
                    } else if selection == "$120,000+" {
                        numselection = 120000.0
                    }
                    saveNameToCoreData()
                }
                Spacer()
                .frame(height: 44)
                .background(Color.white)
            }//vstack closing
        }// zstack closing
    }
        func saveNameToCoreData() {
                withAnimation {
                    let newName = EnterName(context: viewContext)
                    newName.username = name
                    
                    do {
                        try viewContext.save()
                    } catch {
                        // Handle the error
                        print("Error saving name: \(error.localizedDescription)")
                    }
                }
            }
    }
struct login_Previews: PreviewProvider {
    static var previews: some View {
        login(name: .constant(""), selection: .constant("N/A"), numselection: .constant(100000.0), context: PersistenceController.shared.container.viewContext)
    }// some view close
}//struct close

