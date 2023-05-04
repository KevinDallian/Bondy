//
//  FinishedView.swift
//  JungwookTeam
//
//  Created by Kevin Dallian on 04/05/23.
//

import SwiftUI

struct FinishedView: View {
    var gameModel = GameModel.gameModel
    @State var navigateToNextView = false
    var body: some View {
        NavigationStack{
            ZStack{
                Color("Purple")
                    .ignoresSafeArea()
                LottieView(name: "Confetti")
                VStack{
                    Text("Back-to-Back Time!")
                        .font(.largeTitle.weight(.bold))
                        .foregroundColor(.white)
                        .offset(y: 100)
                    Spacer()
                    Text("Finished !!")
                        .font(.largeTitle.weight(.bold))
                        .foregroundColor(.white)
                    Spacer()
                    ZStack{
                        Color("DarkPurple").ignoresSafeArea()
                            .frame(height: 145)
                        VStack{
                            Text("Nice Try!")
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
                                ButtonView(title: "Next")
                            }
                        }
                        .multilineTextAlignment(.center)
                    }
                    
                }
                .navigationDestination(isPresented: $navigateToNextView) {
                    if gameModel.playersHasPlayedAll(){
                        // navigate to endGame
                        LessonView()
                    }else{
                        CardView(player: gameModel.choosePlayerTurn())
                    }
                }
            }
            .navigationBarBackButtonHidden(true)
        }
    }
}

struct FinishedView_Previews: PreviewProvider {
    static var previews: some View {
        FinishedView()
    }
}
