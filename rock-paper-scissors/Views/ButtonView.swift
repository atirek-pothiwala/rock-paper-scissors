//
//  ButtonView.swift
//  rock-paper-scissors
//
//  Created by Atirek Pothiwala on 10/08/25.
//

import SwiftUI

struct ButtonView: View {
    
    let title: String
    let image: String
    let color: Color
    let onTap: () -> Void
    
    init(title: String, image: String, color: Color, _ onTap: @escaping () -> Void) {
        self.title = title
        self.image = image
        self.color = color
        self.onTap = onTap
    }
    
    var body: some View {
        Button {
            self.onTap()
        } label: {
            VStack {
                Image(image)
                    .resizable()
                    .aspectRatio(1, contentMode: .fit)
                    .padding(.all, 20)
                    .background {
                        Circle()
                            .fill(color)
                            .shadow(color: .gray, radius: 2, x: 2, y: 2)
                    }
                
                Text(title)
                    .font(.title2)
                    .bold()
                    .foregroundStyle(Color.main)
            }
        }
    }
}

#Preview {
    ButtonView(title: "Rock", image: "rock", color: Color.red) {
        
    }
}
