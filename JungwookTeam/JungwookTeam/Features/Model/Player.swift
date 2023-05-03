//
//  Player.swift
//  JungwookTeam
//
//  Created by Kevin Dallian on 03/05/23.
//

import Foundation

struct Player : Hashable{
    var name: String
    var cards : [CardEntity]
    
    init(name : String){
        self.name = name
        self.cards = []
    }
    
    mutating func addCard(card: CardEntity){
        cards.append(card)
    }
}
