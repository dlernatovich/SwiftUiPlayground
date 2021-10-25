//
//  TabHomeViewModel.swift
//  SwiftPlayground
//
//  Created by dlernatovich on 21.10.2021.
//

import Foundation
import SwiftUI

/// View model for the TabHomeScreen.
class TabHomeViewModel : BaseViewModel {
    typealias T = TabHomeScreen
    @Published public var notifyMeAbout: Int = 1
    @Published public var playNotificationSounds: Bool = false
    @Published public var sendReadReceipts: Bool = true
    @Published public var profileImageSize: Int = 1
    @Published public var settings: Bool = false
    @Published public var dialog: Bool = false
    @Published public var actionSheet: Bool = false
    
    /// Method which provide the appear functionality.
    /// - Parameter owner: instance.
    func onAppear(owner: T) {
        
    }
    
    /// Method which provide the disapear functionality.
    /// - Parameter owner: instance.
    func onDisapear(owner: T) {
        
    }
    
    /// Method which provide to show of the settings screen.
    func showSettingsScreen() {
        settings.toggle()
    }
    
    /// Method which provide to show dialog functionality.
    func showDialog() {
        dialog.toggle()
    }
    
    /// Method which provide to show dialog functionality.
    func showActionSheet() {
        actionSheet.toggle()
    }
    
}
