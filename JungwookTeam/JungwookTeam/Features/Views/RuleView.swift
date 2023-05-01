//
//  OnBoardingView.swift
//  JungwookTeam
//
//  Created by Geraldy Kumara on 27/04/23.
//

import SwiftUI

struct RuleView: View {
    var body: some View{
        NavigationView{
            ZStack{
                Color("Purple").ignoresSafeArea()
                VStack{
                    HStack{
                        Text("Instructions")
                            .font(.system(size: 31))
                            .bold()
                            .foregroundColor(.white)
                        Spacer()
                    }
                    .padding()
                    ZStack{
                        Color("DarkPurple")
                            .cornerRadius(13)
                            .frame(width: 365, height: 668)
                        VStack{
                            VStack(alignment: .leading, spacing: 1){
                                Text("1. Each player will get 3 cards then make a story out of all the cards in 45 seconds.")
                                    .padding(8)

                                Text("2. After a player storytells, there will be a roulette which choose a player to give a feedback (constructive and appreciative) in 30 seconds for the storyteller.")
                                    .padding(8)

                                Text("3. Each player will take turns to be a storyteller and give feedback")
                                    .padding(8)

                                Text("4. When all players are done, there will be a sharing session to discuss their thoughts and experiences of the entire game")
                                    .padding(8)

                                Text("5. When the time is up, players will get options to play the game again by clicking “Play Again” button or exit the game by clicking “End Game” button.")
                                    .padding(8)

                                Text("6. If players choose “End Game”, thxey will get the lesson learned of playing this game.")
                                    .padding(8)

                                Text("7. All players should be honest throughout the game! Try to enjoy and live in the moment while playing the game! Click ‘Start’ if you are ready!")
                                    .padding(8)
                            }
                            .background(Color("BackgroundText"))
                            .font(.system(size: 16))
                            .foregroundColor(.black)
                            .frame(width: 330)
                            .padding(20)
                            .cornerRadius(13)
                            
                            Button {
                                
                            } label: {
                                Text("Play")
                                    .frame(width: 320, height: 49)
                                    .foregroundColor(.white)
                                    .background(Color("Aqua"))
                                    .cornerRadius(7)
                                    .padding(.bottom, 6)
                            }
                        }
                    }
                   
                    Spacer()
                }
                .padding()
            }
        }
    }
}


struct RuleView_Previews: PreviewProvider {
    static var previews: some View {
        RuleView()
    }
}
