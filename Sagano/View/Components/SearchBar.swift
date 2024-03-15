//
//  SearchBar.swift
//  Sagano
//
//  Created by Camille on 15/3/24.
//

import SwiftUI

struct SearchBar: View {

    @State private var text = ""

    var body: some View {

        VStack {
            HStack {
                Image(systemName: "magnifyingglass")
                    .font(.system(
                        size: 18,
                        weight: .bold))
                    .foregroundStyle(.black.opacity(0.9))
                TextField("", text: $text, prompt: Text("Search")
                    .font(.system(size: 18))
                        .foregroundStyle(.gray)
                )
                    .frame(height: 42)
                    .textFieldStyle(.plain)
            }
            .padding(.vertical, 0)
            .padding(.horizontal, 12)
            .overlay(
                RoundedRectangle(cornerRadius: 6)
                    .stroke(.gray.opacity(0.8), lineWidth: 1))
            .background(
                RoundedRectangle(cornerRadius: 6)
                    .fill(.white))
            .shadow(color: .gray.opacity(0.2),
                    radius: 4,
                    x: 4,
                    y: 4)
            .padding(.horizontal, 16)
            .padding(.vertical, 8)
        }
    }
}

#Preview {
    SearchBar()
}
