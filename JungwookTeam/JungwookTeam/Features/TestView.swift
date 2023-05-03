//
//  TestView.swift
//  JungwookTeam
//
//  Created by Kevin Dallian on 03/05/23.
//

import SwiftUI

struct TestView: View {
    @StateObject var gameModel : GameModel
    @State var backToHome = false
    var body: some View {
        NavigationView{
            VStack{
                ForEach(gameModel.players, id: \.self){ player in
                    Text("\(player.name)")
                        .font(.title.weight(.bold))
                    ForEach(player.cards, id: \.self){ card in
                        Text("\(card.name ?? "card name")")
                    }
                }
                Button("Back"){
                    gameModel.resetGame()
                    backToHome = true
                }
                NavigationLink(destination: HomeView(), isActive: $backToHome){
                    EmptyView()
                }
            }
            
        }
        .navigationBarBackButtonHidden(true)
    }
}

