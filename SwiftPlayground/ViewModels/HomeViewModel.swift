//
//  HomeScreenViewModel.swift
//  SwiftPlayground
//
//  Created by dlernatovich on 21.10.2021.
//

import Foundation
import SwiftUI

/// Home view model.
class HomeViewModel : BaseViewModel {
    typealias T = HomeScreen
    @Published public var selected: Tab = .Home
    
    /// Tabs enum.
    public enum Tab: String {
        case Home = "Home"
        case Favourites = "Favourites"
    }
    
    /// Method which provide the appear functionality.
    /// - Parameter owner: instance.
    func onAppear(owner: T) {
    }
    
    /// Method which provide the disapear functionality.
    /// - Parameter owner: instance.
    func onDisapear(owner: T) {
        
    }
    
    
}

/// Tab extensions.
extension HomeViewModel.Tab {
    /// Icon name for tab.
    var icon: String {
        switch(self) {
        case .Home: return "house.fill"
        case .Favourites: return "star.fill"
        }
    }
}
