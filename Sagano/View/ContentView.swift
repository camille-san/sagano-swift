//
//  ContentView.swift
//  Sagano
//
//  Created by Camille on 15/3/24.
//

import SwiftUI

struct ContentView: View {

    @State private var selection: Tab = .home

    enum Tab {
        case home
        case account
        case cart
        case settings
    }

    init() {
        UITabBar.appearance()
            .backgroundColor = .white
    }

    var body: some View {

        TabView(selection: $selection) {
            HomeView()
                .tabItem {
                    VStack {
                        Image(systemName: "house")
                        Text("Home")
                    }
                }
                .tag(Tab.home)
            Text("Account Page")
                .tabItem {
                    VStack {
                        Image(systemName: "person")
                        Text("Account")
                    }
                }
                .tag(Tab.account)
            Text("My Cart Page")
                .tabItem {
                    VStack {
                        Image(systemName: "cart")
                        Text("My cart")
                    }
                }
                .tag(Tab.cart)
                .badge(2)
            Text("Settings Page")
                .tabItem {
                    VStack {
                        Image(systemName: "line.3.horizontal")
                        Text("Settings")
                    }
                }
                .tag(Tab.settings)
        }

    }
}

#Preview {
    ContentView()
}
