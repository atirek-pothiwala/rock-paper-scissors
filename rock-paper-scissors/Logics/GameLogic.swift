//
//  GameLogic.swift
//  rock-paper-scissors
//
//  Created by Atirek Pothiwala on 13/08/25.
//

import Foundation

class GameLogic: ObservableObject {
    
    @Published var computer: GameAction? = nil
    @Published var human: GameAction? = nil
    @Published var result: GameResult = .undecided

    @Published var loading: Bool = false
    @Published var message: String = ""
    @Published var progress: Float = 0
    let maxProgress: Float = 30
    
    public func play(_ action: GameAction) {
        Task {
            self.human = action
            self.computer = GameAction.allCases.randomElement()
            self.result = self.determineResult()
            await self.resetPlay()
        }
    }

    private func determineResult() -> GameResult {
        if human == nil && computer == nil {
            return .undecided
        }
        
        if human == computer {
            return .draw
        }
        
        switch (human!, computer!) {
        case (.rock, .scissors), (.paper, .rock), (.scissors, .paper):
            return .human
        default:
            return .computer
        }
    }
    
    private func resetPlay() async {
        self.loading = true
        self.message = "Reseting Game"
        await waiting()
        self.reset()
    }
    
    private func waiting() async {
        self.progress = 0
        while self.progress < maxProgress {
            self.progress += 1
            
            let nanoseconds: UInt64 = 100 * 1_000_000
            try? await Task.sleep(nanoseconds: nanoseconds)
        }
    }
    
    private func reset() {
        self.loading = false
        self.message = ""
        self.progress = 0
        self.human = nil
        self.computer = nil
        self.result = .undecided
    }
}
