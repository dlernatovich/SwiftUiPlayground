//
//  ModalDelegate.swift
//  SwiftPlayground
//
//  Created by dlernatovich on 21.10.2021.
//

import Foundation

/// Modal delegate functional.
protocol ModalDelegate {
    
    /// Method which provide the dismiss functional.
    func dismiss(owner: Any?)
}
