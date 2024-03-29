//
//  GameModel.swift
//  JungwookTeam
//
//  Created by Kevin Dallian on 03/05/23.
//

import Foundation
import CoreData

class GameModel : ObservableObject{
    let container : NSPersistentContainer
    let context : NSManagedObjectContext
    
    static let gameModel = GameModel()
    
    @Published var players : [Player] = []
    @Published var cards : [CardEntity] = []
    @Published var whosTurn : Player = Player(name: "init")
    
    private init(){
        container = NSPersistentContainer(name: "JungwookTeam")
        container.loadPersistentStores { description, error in
            if let error = error {
                print("Error loading Core data: \(error.localizedDescription)")
            }
        }
        context = container.viewContext
        getCards()
        
        if cards.isEmpty{
            addCard(name: "Ball", image: "Ball")
            addCard(name: "Butterfly", image: "Butterfly")
            addCard(name: "Cat", image: "Cat")
            addCard(name: "Card Back", image: "CardBack")
            addCard(name: "Chair", image: "Chair")
            addCard(name: "Fire", image: "Fire")
            addCard(name: "Food", image: "Food")
            addCard(name: "Lamp", image: "Lamp")
            addCard(name: "Mask", image: "Mask")
            addCard(name: "Rainbow", image: "Rainbow")
            addCard(name: "Shield", image: "Shield")
            addCard(name: "Shoes", image: "Shoes")
            addCard(name: "Sun", image: "Sun")
            addCard(name: "Time", image: "Time")
            addCard(name: "Trophy", image: "Trophy")
            addCard(name: "Wave", image: "Wave")
            addCard(name: "Wheel", image: "Wheel")
        }
    }
    
    func getCards(){
        let request = NSFetchRequest<CardEntity>(entityName: "CardEntity")
        do{
            try cards = context.fetch(request)
        }catch let error{
            print("Error fetch cards: \(error.localizedDescription)")
        }
    }
    
    func saveData(){
        do{
            try context.save()
        }catch let error {
            print("Error saving data : \(error.localizedDescription)")
        }
        getCards()
    }
    
    func addCard(name: String, image: String){
        let card = CardEntity(context: context)
        card.name = name
        card.image = image
        saveData()
    }
    
    func initializeGame(names: [String]){
        for name in names {
            var player = Player(name: name)
            var cardsToRandom = cards.filter { card in
                card.name != "Card Back"
            }
            for _ in 0...3 {
                let card = cardsToRandom.randomElement()!
                player.addCard(card: card)
                let cardIndex = cardsToRandom.firstIndex(of: card) ?? 1
                cardsToRandom.remove(at: cardIndex)
            }
            players.append(player)
        }
        players.shuffle()
    }
    
    func resetGame(){
        players.removeAll()
    }
    
    func playersHasPlayedAll() -> Bool {
        for player in players {
            if !player.hasPlayed {
                return false
            }
        }
        return true
    }
    
    func choosePlayerTurn() -> Player {
        let player = players.first { player in
            player.hasPlayed == false
        }!
        let playerIndex = players.firstIndex(of: player)
        players[playerIndex!].hasPlayed = true
        whosTurn = player
        return player
    }
    
    func choosePlayerToRoll(exclude: Player) -> [String]{
        let players = players.filter { player in
            player.name != exclude.name
        }
        var nameOfPlayers : [String] = []
        for player in players {
            nameOfPlayers.append(player.name)
        }
        return nameOfPlayers
    }
    
    func choosePlayerFeedback(exclude: Player) -> Player {
        let player = players.first{ player in
            player.name != exclude.name
        }!
        return player
    }
    
    func playAgain(){
        for player in players {
            let playerIndex = players.firstIndex(of: player)
            players[playerIndex!].hasPlayed = false
            players[playerIndex!].cards.removeAll()
            var cardsToRandom = cards.filter { card in
                card.name != "Card Back"
            }
            for _ in 0...3 {
                let card = cardsToRandom.randomElement()!
                players[playerIndex!].addCard(card: card)
                let cardIndex = cardsToRandom.firstIndex(of: card) ?? 1
                cardsToRandom.remove(at: cardIndex)
            }
            players.shuffle()
        }
    }
}
