//
//  CongratulationView.swift
//  JungwookTeam
//
//  Created by Catherine Candice on 04/05/23.
//

import SwiftUI

struct CongratulationView: View {
    @State var navigateToNextView = false
    @State var buttonPressed = ""
    var gameModel = GameModel.gameModel
    
    var body: some View {
        NavigationStack{
            ZStack {
                Color("Purple")
                    .ignoresSafeArea()
                VStack {
                    Text("Well done!")
                        .font(.largeTitle.weight(.bold))
                        .foregroundColor(.white)
                        .padding(.top, 25)
                    Text("You complete the game!!")
                        .font(.title.weight(.semibold))
                        .foregroundColor(.white)
                    Spacer()
                    LottieView(name: "Clap")
                        .scaleEffect(0.25)
                        .frame(width: 390, height: 324.72)
                        .position(x: 195, y: 260)
                        .onAppear {
                            playSound(sound: "Clap", type: "mp3")
                        }
                    VStack {
                        Button {
                            gameModel.playAgain()
                            buttonPressed = "playAgain"
                            navigateToNextView = true
                        } label: {
                            ButtonView(title: "PLAY AGAIN")
                        }
                        .padding(.bottom, 30)
                        
                        Button {
                            gameModel.resetGame()
                            buttonPressed = "endGame"
                            navigateToNextView = true
                        } label: {
                            ButtonView(title: "END GAME", color: Color("Red"))
                        }
                        .padding(.bottom, 20)
                    }
                    
                }
                
                
            }
        }
        .navigationDestination(isPresented: $navigateToNextView) {
            if buttonPressed == "playAgain"{
                CardView(player: gameModel.choosePlayerTurn())
            }else if buttonPressed == "endGame"{
                FeedbackView(player: "ALL PLAYER", promptType: "share")
            }
        }
        .navigationBarBackButtonHidden(true)
    }
    
}

struct CongratulationView_Previews: PreviewProvider {
    static var previews: some View {
        CongratulationView()
    }
}
