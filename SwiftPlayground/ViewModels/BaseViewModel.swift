//
//  BaseViewModel.swift
//  SwiftPlayground
//
//  Created by dlernatovich on 21.10.2021.
//

import Foundation
import SwiftUI

/// Base view model.
protocol BaseViewModel : ObservableObject {
    /// Assciated type.
    associatedtype T: View
    /// Method which provide action when view is appear.
    func onAppear(owner: T)
    /// Method which provide the action when view is disapear.
    func onDisapear(owner: T)
}
