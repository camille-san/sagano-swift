//
//  ItemView.swift
//  Sagano
//
//  Created by Camille on 15/3/24.
//

import SwiftUI

struct ItemView: View {

    var item : Item
    var ratio : CGFloat

    var body: some View {
        VStack (alignment: .leading, spacing: 1) {
            Image(item.image)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(maxWidth: .infinity, maxHeight: ratio)
                .clipped()
                .background(.white)
            Text(item.name)
                .font(.system(size: ratio/10))
                .lineLimit(1)
                .padding(.top, 4)
            PriceView(price: item.price, size: ratio/10)
        }
        .frame(width: ratio)

    }
}

#Preview {
    ItemView(item: ModelData().items[0], ratio: 200)
        .preferredColorScheme(.dark)
}
