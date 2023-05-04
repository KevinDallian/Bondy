//
//  OnBoardingView.swift
//  JungwookTeam
//
//  Created by Geraldy Kumara on 27/04/23.
//

import SwiftUI

struct CardView: View {
    
    var gameModel = GameModel.gameModel
    let player : Player
    
    let adaptiveColumn = [
        GridItem(.adaptive(minimum: 120))
    ]
    
    @State private var cardPulse: CGFloat = 1
    @State private var isTapped: Bool = false
    @State private var navigateToNextView = false
    
    var body: some View{
        NavigationStack{
            ZStack{
                Color("Purple").ignoresSafeArea()
                VStack{
                    Text("Tell us your story!")
                        .foregroundColor(.white)
                        .multilineTextAlignment(.center)
                        .font(.largeTitle)
                        .bold()
                        .offset(y: 20)
                    
                    if !isTapped {
                        Text("Tap to shuffle a card")
                            .font(.system(size: 14))
                            .foregroundColor(.white)
                            .padding(.top, 20)
                        
                        Button {
                            isTapped.toggle()
                        } label: {
                            Image("Deck")
                                .resizable()
                                .frame(width: 268, height: 359)
                                .position(x: 200, y: 251)
                                .shadow(color: .purple, radius: 6)
                        }
                        .scaleEffect(cardPulse)
                        .animation(
                            .easeIn(duration: 1.5)
                            .repeatForever(autoreverses: true), value: cardPulse)
                        .onAppear{
                            cardPulse *= 1.15
                        }
                        
                        ZStack{
                            Color("DarkPurple").ignoresSafeArea()
                            VStack{
                                Text("\(player.name)'s turn")
                                    .padding(.top, 30)
                                    .font(.system(size: 21))
                                    .fontWeight(.heavy)
                                    .foregroundColor(.white)
                                    .textCase(.uppercase)
                            }
                        }
                        .frame(height: 81)
                    } else {
                        ZStack{
                            Color("DarkPurple")
                            VStack{
                                Text("Prompt Storytelling")
                                    .font(.system(size: 14))
                                    .frame(width: 373, height: 27)
                                    .background(.white)
                                
                                Text("What reminds you of other players")
                                    .font(.system(size: 14))
                                    .frame(width: 303, height: 40)
                                    .foregroundColor(.white)
                                    .padding(.top, -10)
                            }
                            .multilineTextAlignment(.center)
                        }
                        .padding()
                        .frame(width: 339, height:60)
                        .cornerRadius(8)
                        
                        .offset(y: 10)
                        
                        LazyVGrid(columns: adaptiveColumn, spacing: 10){
                            ForEach(player.cards, id: \.self){ card in
                                ZStack{
                                    Image(card.image ?? "CardBack")
                                        .resizable()
                                        .frame(width: 161, height: 220)
                                }
                            }
                        }
                        .padding(20)
                        
                        Spacer()
                        ZStack{
                            Color("DarkPurple").ignoresSafeArea()
                            VStack{
                                Text("\(player.name)'s turn")
                                    .font(.system(size: 21))
                                    .fontWeight(.heavy)
                                    .foregroundColor(.white)
                                    .textCase(.uppercase)
                                
                                Text("Click next if you are finished telling your story")
                                    .font(.system(size: 12))
                                    .fontWeight(.medium)
                                    .foregroundColor(.white)
                                    .padding(.top, -6)
                                Button {
                                    navigateToNextView = true
                                } label: {
                                    ButtonView(title: "NEXT")
                                }
                            }
                            .multilineTextAlignment(.center)
                        }
                        
                    }
                    
                }
                .animation(.easeInOut(duration: 1.2), value: isTapped)
                
            }
            .navigationBarBackButtonHidden(true)
        }
        .navigationDestination(isPresented: $navigateToNextView) {
            FortuneWheelView(players: gameModel.choosePlayerToRoll(exclude: player))
        }
        .onDisappear {
            isTapped = false
            cardPulse = 1
        }
    }
    
}

