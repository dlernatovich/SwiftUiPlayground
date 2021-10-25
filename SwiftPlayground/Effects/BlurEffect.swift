//
//  BlurEffect.swift
//  SwiftPlayground
//
//  Created by dlernatovich on 22.10.2021.
//

import Foundation
import SwiftUI

/// Blur effect view.
struct BlurEffect: UIViewRepresentable {
    
    /// Style.
    var style: UIBlurEffect.Style = .systemMaterial
    
    /// Method which provide to make view.
    /// - Parameter context: instance.
    /// - Returns: value.
    func makeUIView(context: Context) -> UIVisualEffectView {
        return UIVisualEffectView(effect: UIBlurEffect(style: style))
    }
    
    /// Method which provide to update view.
    /// - Parameters:
    ///   - uiView: instance.
    ///   - context: instance.
    func updateUIView(_ uiView: UIVisualEffectView, context: Context) {
        uiView.effect = UIBlurEffect(style: style)
    }
    
}
