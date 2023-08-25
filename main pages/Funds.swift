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
    @Binding var name: String
    @Binding var selection: String
    @Binding var numselection: Double
    @Binding var coinAmount: Double
    @State private var calcCoin: Bool = true
    @Binding var ownAmzn: Int
    var body: some View {
        ZStack {
            LinearGradient(
                gradient: Gradient(colors: [Color(red: 0.08, green: 0.17, blue: 0.21), Color(red: 0.05, green: 0.10, blue: 0.13)]),
                startPoint: .top,
                endPoint: .bottom
            )
            .ignoresSafeArea()
            
            VStack {
                let formated = String(format: "numselection: %.2f", numselection)
                Text("Your chosen salary is")
                    .font(Font.custom("Rubik-Regular", size:35))
                    .foregroundColor(Color.white)
                    .padding(.top, 50.0)
                Text ("💰")
                    .font(Font.system(size: 50))
                    .padding(.top, 25.0)
                Text("$\(numselection, specifier: "%.2f")")
                    .font(Font.system(size: 40))
                    .foregroundColor(Color.white)
                    .padding(.top, 25.0)
                Text("💰")
                    .font(Font.system(size: 50))
                    .padding(.top, 25.0)
                
                if calcCoin {
                    Button(action: {
                        if $selection.wrappedValue == "N/A" {
                            numselection = 100000.0
                            coinAmount = 15000.0
                            calcCoin = false
                        } else if $selection.wrappedValue == "$40,000" {
                            numselection = 40000.0
                            coinAmount = 6000.0
                            calcCoin = false
                        } else if $selection.wrappedValue == "$60,000" {
                            numselection = 60000.0
                            coinAmount = 9000.0
                            calcCoin = false
                        } else if $selection.wrappedValue == "$80,000" {
                            numselection = 80000.0
                            coinAmount = 12000.0
                            calcCoin = false
                        } else if $selection.wrappedValue == "$100,000" {
                            numselection = 100000.0
                            coinAmount = 15000.0
                            calcCoin = false
                        } else if $selection.wrappedValue == "$120,000+" {
                            numselection = 120000.0
                            coinAmount = 18000.0
                            calcCoin = false
                        }
                    }) {
                        ZStack {
                            Text("Calculate Coin")
                                .foregroundColor(Color.black) // Text color
                            
                                .padding(10) // Padding around the text
                            
                                .background(
                                    RoundedRectangle(cornerRadius: 10) // Rounded corners for the white box
                                        .fill(Color.white)
                                        .shadow(color: Color.black.opacity(0.2), radius: 5, x: 0, y: 2) // Shadow
                                )
                        }
                    }
                }
                
                HStack {
                    let formatted = String(format: "coinAmount: %.2f", coinAmount)
                    Text("You have")
                        .font(.title2)
                        .foregroundColor(Color.white)
                    Text("\(coinAmount, specifier: "%.2f") coins to invest")
                        .font(.title2)
                        .foregroundColor(Color.white)
                    
                }//hstack close
                .padding()
                
                Spacer()
                Text("Owned stocks:")
                    .font(.title2)
                    .foregroundColor(Color.white)
                if ownAmzn == 1{
                    Text("\(ownAmzn) share Amazon")
                }
                else{
                    Text("\(ownAmzn) shares Amazon")
                        .foregroundColor(Color.white)
                }
            }//vstack close
            .padding()
        }
    }
}

// Funds preview
struct Funds_Previews: PreviewProvider {
    static var previews: some View {
        Funds(name: .constant("John Doe"), selection: .constant("N/A"), numselection: .constant(100000.0), coinAmount: .constant(0.0), ownAmzn:.constant(0))
    }
}
