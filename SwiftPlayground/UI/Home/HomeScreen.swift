//
//  HomeScreen.swift
//  SwiftPlayground
//
//  Created by Dmitry Lernatovich on 20.10.2021.
//

import SwiftUI

/// Home Screen content.
struct HomeScreen: View {
    
    /// View model for Home screen.
    @ObservedObject private var viewModel = HomeViewModel()
    
    /// Body view.
    var body: some View {
        NavigationView {
            ZStack {
                List {
                    NavigationLink("Home", destination: TabHomeScreen())
                    NavigationLink("Fav", destination: TabFavouritesScreen())
//                    // Home tab.
//                    TabHomeScreen().tabItem {
//                        Label(HomeViewModel.Tab.Home.rawValue, systemImage: HomeViewModel.Tab.Home.icon)
//                    }.tag(HomeViewModel.Tab.Home)
//                    // Favourites tab.
//                    TabFavouritesScreen().tabItem {
//                        Label(HomeViewModel.Tab.Favourites.rawValue, systemImage: HomeViewModel.Tab.Favourites.icon)
//                    }.tag(HomeViewModel.Tab.Favourites)
                }
                //jsdjsldkj
                // Apply view model behaviour.
                .onAppear(perform: { viewModel.onAppear(owner: self) })
                .onDisappear(perform: { viewModel.onDisapear(owner: self) })
                // Set accent collor.
                .accentColor(.projectAccentCollor)
                // Customize navigation bar.
                .navigationBarTitle(Text(viewModel.selected.rawValue), displayMode: .inline)
                .navigationBarBackButtonHidden(true)
            }
        }
    }
}

/// Home screen preview.
struct HomeScreen_Previews: PreviewProvider {
    static var previews: some View {
        HomeScreen()
    }
}
