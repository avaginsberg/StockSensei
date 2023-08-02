//
//  Funds.swift
//  StockSensei
//
//  Created by scholar on 8/1/23.
//

import SwiftUI

struct Funds: View {
    @Binding var name:String
    var body: some View {
        Text("Hello, \(name)!")
    }
}

struct Funds_Previews: PreviewProvider {
    static var previews: some View {
        Funds(name:.constant("ava"))
    }
}
