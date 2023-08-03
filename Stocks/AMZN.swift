//
//  AMZN.swift
//  StockSensei
//
//  Created by scholar on 8/2/23.
//

import SwiftUI

struct AMZN: View {
    @Binding var ownAmzn: Bool // Use lowercase initial for variable names
    var body: some View {
        Button("Buy") {
            ownAmzn = true
            
        }//button close
        if ownAmzn {
            Text("u alr own dumbass bruhhhh")
            
        } else {
            Text("You don't own Amzn")
        }
    }
}
struct AMZN_Previews: PreviewProvider {
    static var previews: some View {
        AMZN(ownAmzn: .constant(false)) // Use .constant to bind to a static value
    }
}

