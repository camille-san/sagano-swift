//
//  PriceView.swift
//  Sagano
//
//  Created by Camille on 15/3/24.
//

import SwiftUI

struct PriceView: View {

    var price : Float
    var size : CGFloat

    var body: some View {
        HStack(alignment: .top ,spacing: 0) {
            Text(String("\(price)").split(separator: ".")[0])
                .font(.system(size: size, weight: .medium))
            Group {
                Text(String("\(price)").split(separator: ".")[1])
                Text("€")
                    .font(.system(size: size/1.4))
                    .padding(.leading, 3)
            }
            .padding(.top, 2)
            .padding(.leading, 2)
            .font(.system(size: size/1.5))
        }
    }
}

#Preview {
    PriceView(price: 16.59, size: 22)
}
