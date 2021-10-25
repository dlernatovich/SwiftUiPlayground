//
//  ContentView.swift
//  SwiftPlayground
//
//  Created by Dmitry Lernatovich on 20.10.2021.
//

import SwiftUI

/// Spalsh screen content.
struct SplashScreen: View {
    @EnvironmentObject var app: AppManager
    @ObservedObject private var viewModel = SplashViewModel()
    
    /// Body instance.
    var body: some View {
        ZStack {
            NavigationView {
                VStack {
                    Spacer()
                    Image(systemName: "shareplay")
                        .resizable()
                        .renderingMode(.template)
                        .foregroundColor(.projectAccentCollor)
                        .scaledToFit()
                        .frame(width: 100, height: 100, alignment: .center)
                    Text(verbatim: .projectName)
                        .fontWeight(.bold)
                        .foregroundColor(.projectAccentCollor)
                    Spacer()
                    HStack {
                        Spacer()
                        Text(verbatim: .projectVersion)
                            .fontWeight(.bold)
                            .foregroundColor(.projectAccentCollor)
                        Spacer()
                    }.padding(.bottom, 16)
                    NavigationLink(destination: HomeScreen(), isActive: $viewModel.homeScreen) { EmptyView() }
                }
                // Apply view model behaviour.
                .onAppear {
                    app.showProgress()
                    viewModel.onAppear(owner: self)
                }
                .onDisappear(perform: {
                    app.hideProgress()
                    viewModel.onDisapear(owner: self)
                })
                // Customize navigation bar.
                .navigationBarHidden(true)
                .navigationBarBackButtonHidden(true)
            }
            // Set accent collor.
            .accentColor(.projectAccentCollor)
            // Set navigation style.
            .navigationViewStyle(StackNavigationViewStyle())
        }
    }
}

/// Preview structure.
struct SplashScreen_Previews: PreviewProvider {
    static var previews: some View {
        SplashScreen().previewDevice("iPhone 13 mini")
    }
}
