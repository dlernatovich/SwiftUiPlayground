//
//  HomeFirstScreen.swift
//  SwiftPlayground
//
//  Created by Dmitry Lernatovich on 20.10.2021.
//

import SwiftUI

/// Tab home screen.
struct TabHomeScreen: View {
    @ObservedObject private var viewModel = TabHomeViewModel()
    
    /// Body view.
    var body: some View {
        Form {
            Section(header: Text("Notifications")) {
                Picker("Notify Me About", selection: $viewModel.notifyMeAbout) {
                    Text("Direct Messages").tag(1)
                    Text("Mentions").tag(2)
                    Text("Anything").tag(3)
                }
                Toggle("Play notification sounds", isOn: $viewModel.playNotificationSounds)
                    .toggleStyle(SwitchToggleStyle(tint: .projectAccentCollor))
                Toggle("Send read receipts", isOn: $viewModel.sendReadReceipts)
                    .toggleStyle(SwitchToggleStyle(tint: .projectAccentCollor))
            }
            Section(header: Text("User Profiles")) {
                Picker("Profile Image Size", selection: $viewModel.profileImageSize) {
                    Text("Large").tag(1)
                    Text("Medium").tag(2)
                    Text("Small").tag(3)
                }
                Button("Settings") { viewModel.showSettingsScreen() }.sheet(isPresented: $viewModel.settings) {
                    SettingsScreen()
                }
                Button("Show Dialog") {
                    viewModel.showDialog()
                }.alert(isPresented: $viewModel.dialog) {
                    Alert(
                        title: Text("Message"),
                        message: Text(verbatim: .loremText),
                        primaryButton: .destructive(Text("Hello there")),
                        secondaryButton: .default(Text("Got it!")))
                }
                Button("Show Action Sheet") {
                    viewModel.showActionSheet()
                }.actionSheet(isPresented: $viewModel.actionSheet) {
                    ActionSheet(
                        title: Text("Select a color"),
                        message: Text(verbatim: .loremText),
                        buttons: [
                            .default(Text("Red")) {},
                            .default(Text("Green")) {},
                            .cancel(Text("Blue")) {},
                        ]
                    )
                }
            }
        }
        // Set accent collor.
        .accentColor(.projectAccentCollor)
    }
}

/// Tab preview screen.
struct TabHomeScreen_Previews: PreviewProvider {
    static var previews: some View {
        TabHomeScreen()
            .previewDevice("iPhone SE (2nd generation)")
    }
}
