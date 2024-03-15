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
                .frame(height: ratio)
            Text(item.name)
                .font(.system(size: ratio/9))
                .lineLimit(1)
                .padding(.top, 4)
            PriceView(price: item.price, size: ratio/9)
        }
        .frame(width: ratio)

    }
}

#Preview {
    ItemView(item: Item(name: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque nulla sapien, auctor vitae finibus vel, egestas sit amet ligula.", price: 10.99, image: "1"), ratio: 200)
}
