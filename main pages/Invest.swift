//
//  Invest.swift
//  StockSensei
//
//  Created by scholar on 8/1/23.
//

import SwiftUI

struct Invest: View {
    @State var stock = ""
    @Binding var ownAmzn: Bool
    @Binding var coinAmount:Double
    @State private var isOwnAmzn: Bool = false
    var body: some View {
        NavigationStack {
            VStack {
                Text("Start Investing")
                    .font(.largeTitle)
                    .fontWeight(.semibold)
                HStack {
                    NavigationLink(
                        destination: AAPL(),
                        label: {
                            Text("AAPL")
                                .font(.headline)
                                .foregroundColor(.white)
                                .frame(width: 80, height: 80)
                                .background(Color.green)
                                .cornerRadius(10)
                        }
                    )
                    NavigationLink(
                        destination: BA(),
                        label: {
                            Text("BA")
                                .font(.headline)
                                .foregroundColor(.white)
                                .frame(width: 80, height: 80)
                                .background(Color.green)
                                .cornerRadius(10)
                        }
                    )
                    NavigationLink(
                        destination: AMZN(ownAmzn: $isOwnAmzn,coinAmount:$coinAmount, showButton: true), // Provide a valid binding
                        label: {
                            Text("AMZN")
                                .font(.headline)
                                .foregroundColor(.white)
                                .frame(width: 80, height: 80)
                                .background(Color.green)
                                .cornerRadius(10)
                        }
                    )
                }
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
                       Invest(ownAmzn:.constant(true), coinAmount:.constant(0.0))
                   }
               }
