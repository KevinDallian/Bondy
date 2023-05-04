//
//  CardViewModel.swift
//  JungwookTeam
//
//  Created by Kevin Dallian on 04/05/23.
//

import Foundation

struct CardViewModel{
    var promptContent : String
    
    static let prompts : [CardViewModel] = [
        CardViewModel(promptContent: "What reminds you of other players"),
        CardViewModel(promptContent: "What do you do when you are feeling down?"),
        CardViewModel(promptContent: "What memory you cherish the most with your other players?"),
        CardViewModel(promptContent: "What do you do when you want to celebrate about something?"),
        CardViewModel(promptContent: "What connection you deeply want to share with your other players?"),
        CardViewModel(promptContent: "How do you consider the true meaning of family?"),
        CardViewModel(promptContent: "What are important life values you learn from other players?"),
        CardViewModel(promptContent: "What pieces of wisdom can you share with other players?")
    ]
}
