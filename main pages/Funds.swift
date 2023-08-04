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
    @State var coinAmount = 0.0
    @Binding var name:String
    @Binding var selection:String
    @Binding var numselection:Double
    var body: some View {
        VStack {
            let formattedded = String(format: "numselection: %.2f", numselection)
            Text("Your chosen salary is")
            Text("\(numselection, specifier: "%.2f") coins")

            Button("Calculate Coin") {
                if $selection.wrappedValue == "N/A" {
                    numselection = 100000.0
                
                } else if $selection.wrappedValue == "$40,000"{
                    numselection = 40000.0
                } else if $selection.wrappedValue == "$60,000"{
                    numselection = 60000.0
                } else if $selection.wrappedValue == "$80,000"{
                    numselection = 80000.0
                } else if $selection.wrappedValue == "$100,000"{
                    numselection = 100000.0
                } else if $selection.wrappedValue == "$120,000+"{
                    numselection = 120000.0
                }
                coinAmount = numselection*0.15
                //if let salary = Double(selection) {
                //    coinAmount = calculateCoin(from: salary)
                //}
            }
            .padding()
            
            HStack {
                let formatted = String(format: "coinAmount: %.2f", coinAmount)
                Text("You have")
                Text("\(coinAmount, specifier: "%.2f") coins to invest")
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

// Funds preview
struct Funds_Previews: PreviewProvider {
    static var previews: some View {
        Funds(name: .constant("John Doe"), selection: .constant("N/A"), numselection: .constant(100000.0))
    }
}
