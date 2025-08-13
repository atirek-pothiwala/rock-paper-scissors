//
//  ChoiceView.swift
//  rock-paper-scissors
//
//  Created by Atirek Pothiwala on 13/08/25.
//

import SwiftUI

struct ChoiceView: View {
    
    var title: String
    @Binding var action: GameAction?
    
    var body: some View {
        VStack(alignment: .center) {
            Text(title)
                .font(.title3)
                .bold()
            
            Image(action?.assetImage ?? "undecided")
                .resizable()
                .aspectRatio(1, contentMode: .fit)
                .padding(.all, 15)
        }
    }
}

#Preview {
    ChoiceView(title: "Your Choice", action: .constant(.rock))
}
