//
//  HomeView.swift
//  Sagano
//
//  Created by Camille on 15/3/24.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        VStack {
            SearchBar()
            List {
                Text("For you")
                    .font(.system(
                        size: 24,
                        weight: .bold,
                        design: .default))
                    .padding(.bottom, 8)
                    .listRowSeparator(.hidden)

                ScrollView(.horizontal, showsIndicators: false) {
                    HStack (spacing: 24){
                        ForEach(ModelData().items) { item in
                            ItemView(item: item, ratio: 170)
                        }
                    }
                    .padding(.horizontal, 16)
                    Spacer()
                }
                .listRowInsets(EdgeInsets())
                .listRowSeparator(.hidden)

//                Text("Test")
//                    .listRowSeparator(.hidden)
            }
            .listStyle(.inset)
        }
        .background(LinearGradient(colors: [.cyan, .mint], startPoint: .leading, endPoint: .trailing))
    }

}

#Preview {
    HomeView()
}
