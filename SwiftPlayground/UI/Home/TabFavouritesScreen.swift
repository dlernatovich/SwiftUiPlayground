//
//  HomeSecondScreen.swift
//  SwiftPlayground
//
//  Created by Dmitry Lernatovich on 20.10.2021.
//

import SwiftUI

struct TabFavouritesScreen: View {
    @State var settings: Bool = false
    
    var body: some View {
        VStack {
            Button("Show Another Details") {
                self.settings.toggle()
            }
        }.sheet(isPresented: $settings) {
            SettingsScreen()
        }
        // Set accent collor.
        .accentColor(.projectAccentCollor)
    }
}

struct TabFavouritesScreen_Previews: PreviewProvider {
    static var previews: some View {
        TabFavouritesScreen()
    }
}
