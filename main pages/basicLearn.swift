//
//  basicLearn.swift
//  StockSensei
//
//  Created by scholar on 8/3/23.
//

import SwiftUI

struct basicLearn: View {
    var body: some View {
        ScrollView {
            Text("Fundamentals of Finance")
                .fontWeight(.bold)
                .font(.title)
                .padding(.bottom)
            Image("image1")
                .resizable(resizingMode: .stretch)
                .aspectRatio(contentMode: .fit)
                .padding()
            Text("Investing can seem intimidating, especially when you don’t know where to start or find the resources. A simple analogy Stock Sensei likes to use is to imagine the Stock Market is like a grocery store. The variety of products you can buy in a grocery store is comparable to the different pieces of companies you can buy in the grocery store.")
                .padding()
                .alert(isPresented: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Is Presented@*/.constant(false)/*@END_MENU_TOKEN@*/) {
                    /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Content@*/Alert(title: Text("Alert"))/*@END_MENU_TOKEN@*/
                }
                .sheet(isPresented: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Is Presented@*/.constant(false)/*@END_MENU_TOKEN@*/) {
                    /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Content@*/Text("Sheet Content")/*@END_MENU_TOKEN@*/
                }
            Text("So when you pick which company you’d like to buy a piece of, that is referred to as a stock. Entailing that once you purchase stocks you have a unit of ownership for the company, so depending on the performance/success of the company you may receive dividends to profit from your purchase. It is important to note that there is always risk in investing, as the performance of a company can be unpredictable, and therefore you may actually lose money from your investment choice.")
                .padding()
        }
    }
    
    struct secondView_Previews: PreviewProvider {
        static var previews: some View {
            basicLearn()
        }
    }
}
