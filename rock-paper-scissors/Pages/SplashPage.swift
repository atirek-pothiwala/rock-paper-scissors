//
//  SplashPage.swift
//  rock-paper-scissors
//
//  Created by Atirek Pothiwala on 09/08/25.
//

import SwiftUI

struct SplashPage: View {
    @EnvironmentObject var navigator: Navigator
    
    var body: some View {
        LogoView()
            .safeAreaPadding()
            .background(Color.background)
            .onAppear {
                Timer.scheduledTimer(withTimeInterval: 2, repeats: false) { _ in
                    navigator.push(.game)
                }
            }
    }
}

#Preview {
    SplashPage()
}
