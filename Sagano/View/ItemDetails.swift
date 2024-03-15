//
//  ItemDetails.swift
//  Sagano
//
//  Created by Camille on 15/3/24.
//

import SwiftUI

struct ItemDetails: View {
    
    @Environment(\.dismiss) private var dismiss
    
    var item : Item
    
    var body: some View {
        VStack {
            HStack(spacing : 8) {
                Button {
                    dismiss()
                } label: {
                    Image(systemName: "arrow.left")
                        .font(.system(size: 26))
                        .foregroundStyle(.black)
                }
                SearchBar()
            }
            .padding(.horizontal, 16)
            .padding(.vertical, 8)
            VStack(alignment: .leading) {
                HStack {
                    Text("Marca")
                    Spacer()
                    Text("Rating")
                }
                Text(item.name)
                Image(item.image)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(maxWidth: .infinity, maxHeight: 300)
                    .clipped()
                    .background(.white)
                Divider()
                    .padding(.vertical, 18)
                
                PriceView(price: item.price, size: 32)
                Text("In stock")
                    .foregroundStyle(.green)
                Spacer()
            }
            .foregroundStyle(.black)
            .padding()
            .background(.white)
        }
        .background(LinearGradient(colors: [.cyan, .mint], startPoint: .leading, endPoint: .trailing))
        .navigationBarHidden(true)
                    .gesture(
                        DragGesture(minimumDistance: 100, coordinateSpace: .local)
                            .onEnded { value in
                                if value.translation.width > 0 && abs(value.translation.height) < 100 {
                                    dismiss()
                                }
                            }
                    )
    }
}

#Preview {
    ItemDetails(item:ModelData().items[0])
        .preferredColorScheme(.dark)
}
