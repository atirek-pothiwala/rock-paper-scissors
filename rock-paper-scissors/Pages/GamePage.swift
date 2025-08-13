//
//  GamePage.swift
//  rock-paper-scissors
//
//  Created by Atirek Pothiwala on 10/08/25.
//

import SwiftUI

struct GamePage: View {
    
    @StateObject private var logic: GameLogic = GameLogic()
    
    var body: some View {
        VStack(spacing: 15) {
            HStack {
                
                ChoiceView(
                    title: "Your Choice",
                    action: $logic.human
                )
                
                Text("V/S")
                    .frame(maxWidth: .infinity)
                    .font(.largeTitle)
                    .bold()
                    .padding(.top, 15)
                
                ChoiceView(
                    title: "AI Choice",
                    action: $logic.computer
                )
            }
            .frame(maxWidth: .infinity)
            
            ProgressView(value: logic.progress, total: logic.maxProgress)
                .progressViewStyle(.linear)
                .tint(.accent)
                .ignoresSafeArea()
            
            if logic.loading {
                Text(logic.message)
                    .font(.footnote)
            }
            
            ResultView(result: $logic.result)
   
            HStack(spacing: 20) {
                ForEach(GameAction.allCases, id: \.self) { action in
                    ButtonView(
                        title: action.text,
                        image: action.assetImage,
                        color: logic.loading ? .gray : action.color) {
                            withAnimation {
                                self.logic.play(action)
                            }
                    }
                }
            }
            .padding(.all, 15)
            .disabled(logic.loading)
        }
        .background(Color.background)
        .navigationBarBackButtonHidden()
        .safeAreaPadding()
    }
}

#Preview {
    GamePage()
}
