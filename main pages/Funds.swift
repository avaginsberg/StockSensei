//
//  Funds.swift
//  StockSensei
//
//  Created by scholar on 8/1/23.
//

import SwiftUI

// Function to calculate 15% of a salary
func calculateCoin(from salary: Double) -> Double {
    let coinAmount = salary * 0.15
    return coinAmount
}

struct Funds: View {
    @State private var coinAmount = 0.0
    @Binding var name:String
    @Binding var selection:String
    @Binding var numselection:Int
    var body: some View {
        VStack {
            Text("Your chosen salary is \(selection)")
            Button("Calculate Coin") {
                if $selection.wrappedValue == "N/A" {
                    numselection = 100000
                
                } else if $selection.wrappedValue == "$40,000"{
                    numselection = 40000
                } else if $selection.wrappedValue == "$60,000"{
                    numselection = 60000
                } else if $selection.wrappedValue == "$80,000"{
                    numselection = 80000
                } else if $selection.wrappedValue == "$100,000"{
                    numselection = 100000
                } else if $selection.wrappedValue == "$120,000+"{
                    numselection = 120000
                }
                
                if let salary = Double(selection) {
                    coinAmount = calculateCoin(from: salary)
                }
            }
            .padding()
            
            HStack {
                Text("15% of your salary is")
                Text("\(coinAmount, specifier: "%.2f") coins")
                Image("coin") //
                
                    .resizable()
                    .frame(width: 20, height: 20)
            }
            .padding()
            
            Spacer()
        }
        .padding()
    }
}

    


struct Funds_Previews: PreviewProvider {
    static var previews: some View {
        Funds(name:.constant("ava"), selection:.constant("N/A"), numselection:.constant(100000))
        
    }
}
