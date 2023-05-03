//
//  Player.swift
//  JungwookTeam
//
//  Created by Kevin Dallian on 03/05/23.
//

import Foundation

struct Player : Hashable{
    var name: String
    var hasPlayed: Bool
    var cards : [CardEntity]
    
    init(name : String){
        self.name = name
        self.cards = []
        self.hasPlayed = false
    }
    
    mutating func addCard(card: CardEntity){
        cards.append(card)
    }
}
