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
    var body: some View {
        VStack {
            Image("amazon")
                .resizable(resizingMode: .stretch)
                .aspectRatio(contentMode: .fit)
            Text("Amazon Stock")
                .font(.title)
            .padding()
            //Text("ownAmzn: \(ownAmzn.description)")
            HStack{
                if showButton {
                    Button("Buy") {
                        ownAmzn = true
                     //TO DO: coinAmount -= price of stock
                    }
                    .padding()
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(10)
                    Button("Sell"){
                        if ownAmzn{}
                    }
                    .padding()
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(10)

                }
            }
                //if ownAmzn {
                //Text("You own AMZN!")

            //} else {
                //Text("You don't own AMZN.")
            //}
        }//button close
    }

}

struct AMZN_Previews: PreviewProvider {
    static var previews: some View {






        AMZN(ownAmzn: .constant(false),coinAmount:.constant(0.0), showButton: true)
    }
}

