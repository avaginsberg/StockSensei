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
    var body: some View {
        VStack {
            TextField("Enter your salary", text: $selection)
                .padding()
                .keyboardType(.decimalPad)
            
            Button("Calculate Coin") {
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
        Funds(name:.constant("ava"), selection:.constant("N/A"))
        
    }
}
