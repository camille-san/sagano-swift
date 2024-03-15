//
//  HomeView.swift
//  Sagano
//
//  Created by Camille on 15/3/24.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        NavigationStack {
            VStack {
                SearchBar()
                    .padding(.horizontal, 16)
                    .padding(.vertical, 8)
                VStack (alignment: .leading) {
                    Text("For you")
                        .font(.system(
                            size: 26,
                            weight: .bold,
                            design: .default))
                        .foregroundStyle(.black)
                        .padding(.bottom, 8)

                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack (spacing: 24){
                            ForEach(ModelData().items) { item in
                                NavigationLink(destination: ItemDetails(item: item)) {
                                    ItemView(item: item, ratio: 170)
                                }
                                .foregroundStyle(.black)
                            }
                        }
                        Spacer()
                    }
                    .listRowInsets(EdgeInsets())
                    .listRowSeparator(.hidden)
                }
                .padding(16)
                .background(.white)
            }
            .background(LinearGradient(colors: [.cyan, .mint], startPoint: .leading, endPoint: .trailing))
        }
    }

}

#Preview {
    HomeView()
        .preferredColorScheme(.dark)
}
