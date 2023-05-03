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
    
    @Published var players : [Player] = []
    @Published var cards : [CardEntity] = []
    
    init(){
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
            var cardsToRandom = cards
            for _ in 0...3{
                let card = cardsToRandom.randomElement()!
                player.addCard(card: card)
                let cardIndex = cardsToRandom.index(of: card) ?? 1
                cardsToRandom.remove(at: cardIndex)
            }
            players.append(player)
        }
    }
    
    func resetGame(){
        players.removeAll()
    }
}
