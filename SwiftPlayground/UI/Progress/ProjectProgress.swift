//
//  ProgressView.swift
//  SwiftPlayground
//
//  Created by dlernatovich on 25.10.2021.
//

import SwiftUI

struct ProjectProgress: View {
    @State var text: String = "Please wait"
    var body: some View {
        ZStack {
            BlurEffect().edgesIgnoringSafeArea(.all)
            ProgressView(text)
                .foregroundColor(.projectAccentCollor)
                .progressViewStyle(CircularProgressViewStyle(tint: .projectAccentCollor))
        }
    }
}

struct ProjectProgress_Previews: PreviewProvider {
    static var previews: some View {
        ProjectProgress()
    }
}
