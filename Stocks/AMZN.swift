////
////  AMZN.swift
////  StockSensei
////
////  Created by scholar on 8/2/23.
////
//
import SwiftUI
struct AMZN: View {
    @Binding var ownAmzn: Bool
    @Binding var coinAmount:Double
    let showButton: Bool
    @State private var currentStockPrice: Double = 1500.00 // Initial stock price
    @State private var timer: Timer? = nil

    var body: some View {
        VStack {
            Text("Amazon Stock Price")
                .font(.title)
                .fontWeight(.bold)
                .padding(.top, 20)
            Spacer()
            Text(String(format: "$%.2f", currentStockPrice))
                .font(.system(size: 40, weight: .bold, design: .default))
                .foregroundColor(.blue)
                .padding(.vertical, 20)
            HStack {
                Button(action: {if ownAmzn{
                    coinAmount = coinAmount - currentStockPrice
                }
                }) {
                    Text("Buy")
                        .font(.headline)
                        .foregroundColor(.white)
                        .padding()
                        .background(Color.green)
                        .cornerRadius(10)
                }
                Spacer()
                Button(action: {
                }) {
                    Text("Sell")
                        .font(.headline)
                        .foregroundColor(.white)
                        .padding()
                        .background(Color.red)
                        .cornerRadius(10)
                }
            }
            .padding(.horizontal, 20)
            Spacer()
        }
        .onAppear {
            startStockPriceSimulation()
        }
        .onDisappear {
            timer?.invalidate()
            timer = nil
        }
        Text("You have 14,524 coins left!")
    }//vstack close
    
      func startStockPriceSimulation() {
        timer = Timer.scheduledTimer(withTimeInterval: 10, repeats: true) { _ in
          updateStockPrice()
        }
        timer?.fire()
      }//func close
      func updateStockPrice() {
        // Simulate stock price change
        let randomPriceChange = Double.random(in: -10...10)
        currentStockPrice += randomPriceChange
        currentStockPrice = max(120.00, min(142.00, currentStockPrice))
      }//func close
    }
struct AMZN_Previews: PreviewProvider {
  static var previews: some View {
    AMZN(ownAmzn: .constant(false),coinAmount:.constant(0.0), showButton: true)
  }
}
//struct AMZN: View {
//    @State private var currentStockPrice: Double = 1500.00 // Initial stock price
//    @State private var timer: Timer? = nil
//
//
//
//
//
//    @Binding var ownAmzn: Bool
//    @Binding var coinAmount:Double
//    let showButton: Bool
//    var body: some View {
//        VStack {
//            Image("amazon")
//                .resizable(resizingMode: .stretch)
//                .aspectRatio(contentMode: .fit)
//            Text("Amazon Stock")
//                .font(.title)
//            .padding()
//            //Text("ownAmzn: \(ownAmzn.description)")
//            HStack{
//                if showButton {
//                    Button("Buy") {
//                        ownAmzn = true
//                     //TO DO: coinAmount -= price of stock
//                    }
//                    .padding()
//                    .background(Color.blue)
//                    .foregroundColor(.white)
//                    .cornerRadius(10)
//                    Button("Sell"){
//                        if ownAmzn{}
//                    }
//                    .padding()
//                    .background(Color.blue)
//                    .foregroundColor(.white)
//                    .cornerRadius(10)
//
//                }
//            }
//                //if ownAmzn {
//                //Text("You own AMZN!")
//
//            //} else {
//                //Text("You don't own AMZN.")
//            //}
//        }//button close
//    }
//
//}
//
//struct AMZN_Previews: PreviewProvider {
//    static var previews: some View {
//
//
//
//
//
//
//        AMZN(ownAmzn: .constant(false),coinAmount:.constant(0.0), showButton: true)
//    }
//}
//
