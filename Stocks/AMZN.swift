//
//  AMZN.swift
//  StockSensei
//
//  Created by scholar on 8/2/23.
//

import SwiftUI


struct AMZN: View {
    @Binding var OwnAmzn = false
    var body: some View {
        Button("Buy") {
          OwnAmzn = true
        }
    }
}

struct AMZN_Previews: PreviewProvider {
    static var previews: some View {
        AMZN(OwnAmzn:false)
    }
}
