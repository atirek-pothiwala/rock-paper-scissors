//
//  LogoView.swift
//  rock-paper-scissors
//
//  Created by Atirek Pothiwala on 09/08/25.
//

import SwiftUI

struct LogoView: View {
    var body: some View {
        VStack(spacing: 0) {
            Image("logo")
                .resizable()
                .scaledToFit()
                .frame(width: 150)
                
            Text("Rock Paper Scissors".uppercased())
                .font(.title2)
                .bold()
                .foregroundStyle(Color.dark)
                
        }
        .aspectRatio(1, contentMode: .fill)
        .frame(maxWidth: .infinity, maxHeight: .infinity)
    }
}

#Preview {
    LogoView()
}
