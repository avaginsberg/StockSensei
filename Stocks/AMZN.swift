//////
//////  AMZN.swift
//////  StockSensei
//////
//////  Created by scholar on 8/2/23.
//////
////
import SwiftUI
struct AMZN: View {
    @Binding var ownAmzn: Int
    @Binding var coinAmount:Double
    let showButton: Bool
    @State private var currentStockPrice: Double = 1500.00 // Initial stock price
    @State private var timer: Timer? = nil

    var body: some View {
        VStack {
            Text(String(format: "%.2f", $coinAmount.wrappedValue))
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
                Button(action: {
                    if coinAmount >= currentStockPrice {
                        coinAmount -= currentStockPrice
                    }
                    if coinAmount >= currentStockPrice{
                        ownAmzn += 1
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
                    if ownAmzn >= 1{
                        coinAmount += currentStockPrice
                    }
                    if ownAmzn >= 1 {
                        ownAmzn -= 1
                    }
                    
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
        if ownAmzn == 1{
            Text("You own \(ownAmzn) share of Amazon")
        }
        else{
            Text("You own \(ownAmzn) shares of Amazon")
        }
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

       // print("Current coin amount: \(coinAmount)")
    }

}
struct AMZN_Previews: PreviewProvider {
  static var previews: some View {
    AMZN(ownAmzn: .constant(0),coinAmount:.constant(0.0), showButton: true)
  }
}
