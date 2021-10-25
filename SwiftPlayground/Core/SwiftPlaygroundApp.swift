//
//  SwiftPlaygroundApp.swift
//  SwiftPlayground
//
//  Created by Dmitry Lernatovich on 20.10.2021.
//

import SwiftUI

/// Application delegate.
@main
struct SwiftPlaygroundApp: App {
    @ObservedObject private var app: AppManager = AppManager()
    
    /// Body variable.
    var body: some Scene {
        WindowGroup {
            ZStack {
                app.screen.zIndex(0)
                app.progressView.opacity(app.progress ? 1.0 : 0.0).zIndex(1)
            }
            .accentColor(.projectAccentCollor)
            .environmentObject(app)
        }
    }
    
}

/// App environment manager.
class AppManager: ObservableObject {
    @Published fileprivate var progress: Bool = false
    @Published fileprivate var screen: AnyView = AnyView(SplashScreen())
    @Published fileprivate var progressView: AnyView = AnyView(ProjectProgress())
    
    /// Method which provide to show progress functional.
    func showProgress() { progress = true }
    /// Method which provide to hide progress.
    func hideProgress() { progress = false }
    
    /// Method which provide to replace of the current screen.
    /// - Parameter screen: screen type.
    func replaceScreen(screen: Screens) {
        switch(screen) {
        case .splash:
            self.screen = AnyView(SplashScreen())
        case .home:
            self.screen = AnyView(HomeScreen())
        case .settings:
            self.screen = AnyView(SettingsScreen())
        }
    }
}
