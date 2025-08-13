//
//  GameAction.swift
//  rock-paper-scissors
//
//  Created by Atirek Pothiwala on 13/08/25.
//


import Foundation
import SwiftUICore

enum GameAction: CaseIterable {
    case rock
    case paper
    case scissors
    
    var assetImage: String {
        switch self {
        case .rock:
            return "rock"
        case .paper:
            return "paper"
        case .scissors:
            return "scissors"
        }
    }
    
    var text: String {
        switch self {
        case .rock:
            return "Rock"
        case .paper:
            return "Paper"
        case .scissors:
            return "Scissors"
        }
    }
    
    var color: Color {
        switch self {
        case .rock:
            return .red
        case .paper:
            return .blue
        case .scissors:
            return .green
        }
    }
}
