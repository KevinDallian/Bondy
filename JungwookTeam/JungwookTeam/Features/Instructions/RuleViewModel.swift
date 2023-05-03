//
//  RuleViewModel.swift
//  JungwookTeam
//
//  Created by Geraldy Kumara on 02/05/23.
//

import Foundation

struct RuleViewModel: Identifiable{
    let id = UUID()
    var text: String
    
    static let ruleViewText: [RuleViewModel] = [
        RuleViewModel(text: "1. Each player will get 4 cards, it can be the same card or different card."),
        RuleViewModel(text: "2. Each player should make a story out of all cards with a given storytelling prompt."),
        RuleViewModel(text: "3. While a player tells a story, other players must pay attention to the storyteller."),
        RuleViewModel(text: "4. After a player storytells, there will be a roulette to choose another player to give feedbacks."),
        RuleViewModel(text: "5. The feedback can be constructive and appreciative for the storyteller. "),
        RuleViewModel(text: "6. If the feedback player finds struggle to give one, there are some hints to help in giving feedback."),
        RuleViewModel(text: "7. After feedback session, the storyteller will be given a chance to give a back-to-back response based on the feedback they get."),
        RuleViewModel(text: "8. If the storyteller finds struggle to think one, there are some hints to help in responding."),
        RuleViewModel(text: "9. Each player will take turns to be a storyteller, give feedback, and have a back-to-back session."),
        RuleViewModel(text: "10. When all players are done, the players will get option to play the game again by clicking “Play Again” button or exit the game by clicking “End Game” button."),
        RuleViewModel(text: "11. If players choose “Play Again”, they will repeat the process of playing the game."),
        RuleViewModel(text: "12. All players will discuss their thoughts and experiences of the entire game."),
        RuleViewModel(text: "13. If the feedback player finds struggle to give one, there are some hints to help in giving feedback."),
    ]
}
