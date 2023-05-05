//
//  FeedbackView.swift
//  JungwookTeam
//
//  Created by Kevin Dallian on 02/05/23.
//

import SwiftUI

struct FeedbackView: View {
    let player : String
    let promptType : String
    var gameModel = GameModel.gameModel
    var feedbackViewModel : FeedbackViewModel {
        if promptType == "feedback"{
            return FeedbackViewModel.feedback
        }else if promptType == "storyteller"{
            return FeedbackViewModel.storyteller
        }else {
            return FeedbackViewModel.share
        }
    }
    var body: some View {
        NavigationView{
            ZStack{
                Color("Purple")
                    .ignoresSafeArea()
                VStack{
                    Spacer()
                    Text(feedbackViewModel.title)
                        .font(.largeTitle.weight(.bold))
                        .foregroundColor(.white)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.horizontal, 30.0)
                    Text(feedbackViewModel.caption)
                        .font(.body)
                        .foregroundColor(.white)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.horizontal, 30.0)
                    Spacer()
                    ZStack{
                        RoundedRectangle(cornerRadius: 10)
                            .frame(width: 315, height: 361)
                            .foregroundColor(Color("DarkPurple"))
                        RoundedRectangle(cornerRadius: 10)
                            .fill(Color("LightPurple"))
                            .frame(width: 285.73, height: 337.19)
                        VStack(alignment: .leading, spacing: 14){
                            ForEach(feedbackViewModel.prompts, id: \.self){ prompt in
                                Text("\(prompt.prompt)")
                                    .lineSpacing(10)
                            }
                        }.offset(y: -30)
                        .frame(width: 270)
                    }
                    Spacer()
                    ZStack{
                        Rectangle()
                            .foregroundColor(Color("DarkPurple"))
                            .ignoresSafeArea()
                            .frame(height: 125)
                        VStack{
                            Text("\(player)'s turn")
                                .foregroundColor(.white)
                                .textCase(.uppercase)
                                .font(.title2.weight(.bold))
                            Text("Click next if you are finished giving feedback")
                                .font(.caption.weight(.semibold))
                                .foregroundColor(.white)
                                .offset(y: 8)
                            NavigationLink{
                                if promptType == "feedback"{
                                    FeedbackView(player: gameModel.whosTurn.name, promptType: "storyteller")
                                }else if promptType == "storyteller"{
                                    FinishedView()
                                }else{
                                    HomeView()
                                }
                                
                            }label: {
                                ButtonView(title: "NEXT")
                                    .shadow(color: Color(red: 68/255, green: 35/255, blue: 94/255), radius: 1, x: 0, y: 3)
                            }
                        }
                    }
                }
            }
        }
            .navigationBarBackButtonHidden(true)
    }
}

struct FeedbackView_Previews: PreviewProvider {
    static var previews: some View {
        FeedbackView(player: "Player 2", promptType: "storyteller")
    }
}
