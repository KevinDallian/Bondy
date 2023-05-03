//
//  CoreDataModel.swift
//  JungwookTeam
//
//  Created by Kevin Dallian on 28/04/23.
//

import CoreData

class CoreDataModel : ObservableObject{
    let container : NSPersistentContainer
    let context : NSManagedObjectContext
    @Published var players: [PlayerEntity] = []
    @Published var cards: [CardEntity] = []
    
    init(){
        container = NSPersistentContainer(name: "JungwookTeam")
        container.loadPersistentStores { description, error in
            if let error = error {
                print("Error loading Core data: \(error.localizedDescription)")
            }
        }
        context = container.viewContext
    }
    
    func saveData(){
        if context.hasChanges{
            do{
                try context.save()
            } catch let error{
                print("Error saving data : \(error.localizedDescription)")
            }
        }
        getCards()
        getPlayers()
    }
    
    func getCards(){
        let request = NSFetchRequest<CardEntity>(entityName: "CardEntity")
        do{
            try cards = context.fetch(request)
        }catch let error{
            print("Error fetch cards: \(error.localizedDescription)")
        }
    }

    func addCard(name: String, image: String){
        let card = CardEntity(context: context)
        card.name = name
        card.image = image
        saveData()
    }
    
    func getPlayers(){
        let request = NSFetchRequest<PlayerEntity>(entityName: "PlayerEntity")
        do{
            try players = context.fetch(request)
        } catch let error {
            print("Error fetch players : \(error.localizedDescription)")
        }
    }
    
    func addPlayer(name: String){
        let player = PlayerEntity(context: context)
        player.name = name
        player.storyTime = false
        for _ in 0...3{
            let card = cards.randomElement()!
            player.addToCards(card)
        }
        saveData()
    }
}
