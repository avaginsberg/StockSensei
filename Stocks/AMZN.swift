//
//  AMZN.swift
//  StockSensei
//
//  Created by scholar on 8/2/23.
//

import SwiftUI
@Binding var OwnAmzn:Bool
struct AMZN: View {
    var body: some View {
        Button("Buy") {
          OwnAmzn = true
        }
    }
}

struct AMZN_Previews: PreviewProvider {
    static var previews: some View {
        AMZN()
    }
}
