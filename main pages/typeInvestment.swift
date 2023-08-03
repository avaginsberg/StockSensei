//
//  typeInvestment.swift
//  StockSensei
//
//  Created by scholar on 8/3/23.
//

import SwiftUI

struct typeInvestment: View {
    var body: some View {
        ScrollView{
            Text("What are the different types of investments you should know?")
                .font(.title)
                .fontWeight(.bold)
                .padding(.horizontal, 8.0)
            Image("investment")
                .resizable(resizingMode: .stretch)
                .aspectRatio(contentMode: .fit)
Text("Stocks: Like we discussed in our grocery store analogy, a stock is a share of a company that you now own. Although you can make quite a lot of profit from stocks, the risk is typically higher as you’re putting your money into a company. Stock investors can make money when the value of their stock increases and they can sell their shares. Sometimes stocks even pay dividends, which means you regularly get a distribution of the company’s earnings.")
                .padding()
                Spacer()

Text("Bonds: Bonds are essentially a loan you can make to a company or the government. When you buy a bond, you are letting a group borrow your money and pay you back with interest overtime. Bonds are typically a low risk investment, however the return they get is significantly less than other investments. Since you can purchase bonds from a variety of issuers with different levels of risks, the higher the risk the higher the return. With bonds you have the benefit of getting regular income payments.")
                .padding()
        Spacer()
Text("ETFs: This stands for Exchange-traded funds, which is a type of index fund. Let’s go back to our grocery store analogy where the different items you can buy represent the different stocks of companies you can buy. We can compare ETFs to a granola mix. Imagine all the different nuts, raisins, chocolate, in the granola mix represent different stocks, bonds, or any asset. You buy this “granola mix” because you have a variety of assets which makes your investment low risk. ")
                .padding()
        }
    }
}

struct typeInvestment_Previews: PreviewProvider {
    static var previews: some View {
        typeInvestment()
    }
}

