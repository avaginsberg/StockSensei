//
//  Invest.swift
//  StockSensei
//
//  Created by scholar on 8/1/23.
//

import SwiftUI

struct Invest: View {
    @State var stock = ""
    var body: some View {
        NavigationStack{
            VStack{
                Text("Start Investing")
                    .font(.largeTitle)
                    .fontWeight(.semibold)
                HStack{
                    NavigationLink(
                        destination: AAPL(),label: {
                            Text("AAPL")
                                .font(.headline)
                                .foregroundColor(.white)
                                .frame(width: 80, height: 80)
                                .background(Color.green)
                                .cornerRadius(10)
                            
                        })//aapl nav link close
                    NavigationLink(
                        destination: BA(),label: {
                            Text("BA")
                                .font(.headline)
                                .foregroundColor(.white)
                                .frame(width: 80, height: 80)
                                .background(Color.green)
                                .cornerRadius(10)
                            
                        })// BA nav link close
                    NavigationLink(
                        destination: AMZN(),label: {
                            Text("AMZN")
                                .font(.headline)
                                .foregroundColor(.white)
                                .frame(width: 80, height: 80)
                                .background(Color.green)
                                .cornerRadius(10)
                        })//AMZN nav link close
                }//hstack close
                HStack{
                    NavigationLink(
                        destination: META(),label: {
                            Text("META")
                                .font(.headline)
                                .foregroundColor(.white)
                                .frame(width: 80, height: 80)
                                .background(Color.green)
                                .cornerRadius(10)
                            
                        })//META nav link close
                    NavigationLink(
                        destination: MSFT(),label: {
                            Text("MSFT")
                                .font(.headline)
                                .foregroundColor(.white)
                                .frame(width: 80, height: 80)
                                .background(Color.green)
                                .cornerRadius(10)
                            
                        })// MSFT nav link close
                    NavigationLink(
                        destination: GOOG(),label: {
                            Text("GOOG")
                                .font(.headline)
                                .foregroundColor(.white)
                                .frame(width: 80, height: 80)
                                .background(Color.green)
                                .cornerRadius(10)
                            
                        })//GOOG nav link close
                }//hstack 2 close
                HStack{
                    NavigationLink(
                        destination: TSLA(),label: {
                            Text("TSLA")
                                .font(.headline)
                                .foregroundColor(.white)
                                .frame(width: 80, height: 80)
                                .background(Color.green)
                                .cornerRadius(10)
                            
                        })//META nav link close
                    NavigationLink(
                        destination: UNH(),label: {
                            Text("UNH")
                                .font(.headline)
                                .foregroundColor(.white)
                                .frame(width: 80, height: 80)
                                .background(Color.green)
                                .cornerRadius(10)
                            
                        })// MSFT nav link close
                    NavigationLink(
                        destination: XOM(),label: {
                            Text("XOM")
                                .font(.headline)
                                .foregroundColor(.white)
                                .frame(width: 80, height: 80)
                                .background(Color.green)
                                .cornerRadius(10)
                            
                        })//GOOG nav link close
                }
            }//vstack close
            
        }//nav stack close
    }//some view close
}//struct close

struct Invest_Previews: PreviewProvider {
    static var previews: some View {
        Invest()
    }
}
