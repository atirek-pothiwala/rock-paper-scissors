//
//  GameResult.swift
//  rock-paper-scissors
//
//  Created by Atirek Pothiwala on 13/08/25.
//


import Foundation
import SwiftUICore

enum GameResult {
    case undecided
    case draw
    case human
    case computer
    
    var systemImage: String {
        switch self {
        case .undecided:
            return "face.smiling.fill"
        case .draw:
            return "hand.thumbsdown.fill"
        case .human:
            return "crown.fill"
        case .computer:
            return "lightbulb.max.fill"
        }
    }
    
    var color: Color {
        switch self {
        case .undecided:
            return Color.gray
        case .draw:
            return Color.red
        default:
            return Color.yellow
        }
    }
    
    var text: String {
        switch self {
        case .undecided:
            return "Pick your choice!"
        case .draw:
            return "Its a draw!"
        case .human:
            return "You Win!"
        case .computer:
            return "You Lost!"
        }
    }
}
