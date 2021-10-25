//
//  SettingsScreen.swift
//  SwiftPlayground
//
//  Created by Dmitry Lernatovich on 20.10.2021.
//

import SwiftUI

struct SettingsScreen: View {
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        NavigationView {
            List {
                Text("Hello, World!")
                Text("Hello, World!1")
                Button("Dismiss") { presentationMode.wrappedValue.dismiss() }
            }
            .navigationBarTitle(Text("Settings"), displayMode: .inline)
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    Button("Close") { presentationMode.wrappedValue.dismiss() }
                }
            }
        }
        // Set accent collor.
        .accentColor(.projectAccentCollor)
    }
}

struct SettingsScreen_Previews: PreviewProvider {
    static var previews: some View {
        SettingsScreen()
    }
}
