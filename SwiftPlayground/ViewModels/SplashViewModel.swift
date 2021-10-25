//
//  SplashViewModel.swift
//  SwiftPlayground
//
//  Created by dlernatovich on 21.10.2021.
//

import Foundation
import SwiftUI


/// View model for the splash view.
class SplashViewModel : BaseViewModel {
    typealias T = SplashScreen
    @Published public var homeScreen: Bool = false
    
    /// Method which provide the appear functionality.
    /// - Parameter owner: instance.
    func onAppear(owner: T) {
        DispatchQueue.main.asyncAfter(deadline: .now() + Double(2.0)) {
            self.homeScreen.toggle()
        }
    }
    
    /// Method which provide the disapear functionality.
    /// - Parameter owner: instance.
    func onDisapear(owner: T) {
        
    }
    
}
