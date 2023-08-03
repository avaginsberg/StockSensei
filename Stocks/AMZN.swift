//
//  AMZN.swift
//  StockSensei
//
//  Created by scholar on 8/2/23.
//

import SwiftUI

struct AMZN: View {
    @Binding var ownAmzn: Bool// Use lowercase initial for variable names
    var body: some View {
        VStack {
            Text("ownAmzn: \(ownAmzn.description)")
            Button("Change to True") {
                ownAmzn = true
                
            }
            if ownAmzn {
                Text("You own AMZN!")
            } else {
                Text("You don't own AMZN.")
                    }
                }
        }//button close
    }
}
struct AMZN_Previews: PreviewProvider {
    static var previews: some View {
        AMZN(ownAmzn: .constant(false)) // Use .constant to bind to a static value
    }
}

