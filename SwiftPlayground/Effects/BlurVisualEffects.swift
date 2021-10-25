//
//  BlurVisualEffects.swift
//  SwiftPlayground
//
//  Created by dlernatovich on 22.10.2021.
//

import Foundation
import SwiftUI

struct BlurVisualEffects: UIViewRepresentable {
    var effect: UIVisualEffect?
    func makeUIView(context: UIViewRepresentableContext<Self>) -> UIVisualEffectView { UIVisualEffectView() }
    func updateUIView(_ uiView: UIVisualEffectView, context: UIViewRepresentableContext<Self>) { uiView.effect = effect }
}
