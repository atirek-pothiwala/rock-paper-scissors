//
//  ResultView.swift
//  rock-paper-scissors
//
//  Created by Atirek Pothiwala on 13/08/25.
//

import SwiftUI

struct ResultView: View {
    
    @Binding var result: GameResult
    
    var body: some View {
        VStack(spacing: 5) {
            Image(systemName: result.systemImage)
                .imageScale(.large)
                .foregroundStyle(result.color)
                .font(.system(size: 50, weight: .regular))
            
            Text(result.text)
                .font(.system(size: 30, weight: .semibold))
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .center)
        .padding(.all, 20)
    }
}

#Preview {
    ResultView(result: Binding.constant(.computer))
}
