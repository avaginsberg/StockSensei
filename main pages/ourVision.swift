//
//  ourVision.swift
//  StockSensei
//
//  Created by scholar on 8/3/23.
//

import SwiftUI

struct ourVision: View {
    var body: some View {
        ScrollView{
            Text("Our Vision")
                .font(.largeTitle)
                .fontWeight(.heavy)
            Image("vision")
                .resizable(resizingMode: .stretch)
                .aspectRatio(contentMode: .fit)
            Text("Stock Sensei has decided to focus the launch of our app on practicing investing with Stocks. We prioritized stocks as they tend to be more high risk than other investment options, however our vision is that our users will continue to learn the other investment options and decide which option is most suitable towards their goals, lifestyles, and strategies.")
                .padding()
            Text("We created this app with the intention of getting youth and people of all socio-economic classes involved in the potential of investing to drastically improve your financials. As our app won’t directly earn you money, it provides you with a platform for infinite practice. Just like anything else, practice and experience will only help in financial literacy. Our hope is that as you start investing in this simulator, you will begin to notice patterns and develop your own personal strategy that works for you! Maybe the simplicity of this app will spark your passion to learn more, and you’ll begin researching to expand your knowledge. ")
                .padding()
        }
    }
}

struct ourVision_Previews: PreviewProvider {
    static var previews: some View {
       ourVision()
    }
}

