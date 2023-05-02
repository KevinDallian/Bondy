//
//  FeedbackView.swift
//  JungwookTeam
//
//  Created by Kevin Dallian on 02/05/23.
//

import SwiftUI

struct FeedbackView: View {
    let player : String
    var body: some View {
        NavigationView{
            ZStack{
                Color("Purple")
                    .ignoresSafeArea()
                VStack{
                    Spacer()
                    Text("Feedback Time!")
                        .font(.largeTitle.weight(.bold))
                        .foregroundColor(.white)
                    Text("Here are some hints that can help you discuss for your sharing time!")
                        .font(.body)
                        .foregroundColor(.white)
                        .multilineTextAlignment(.center)
                        .padding(.horizontal, 30.0)
                    Spacer()
                    ZStack{
                        RoundedRectangle(cornerRadius: 10)
                            .frame(width: 315, height: 361)
                            .foregroundColor(Color("backgroundButton"))
                        VStack(spacing: 10){
                            // static - change later
                            Text("1. Prompt question")
                            Text("2. Prompt question")
                            Text("3. Prompt question")
                        }.background(RoundedRectangle(cornerRadius: 10)
                            .fill(.white)
                            .frame(width: 285.73, height: 337.19)
                        )
                    }
                    Spacer()
                    ZStack{
                        Rectangle()
                            .foregroundColor(Color("DarkPurple"))
                            .ignoresSafeArea()
                            .frame(height: 125)
                        VStack{
                            Text("\(player)")
                                .foregroundColor(.white)
                                .textCase(.uppercase)
                                .font(.title2.weight(.bold))
                            Text("Click next if you are finished giving feedback")
                                .font(.caption.weight(.semibold))
                                .foregroundColor(.white)
                                .offset(y: 8)
                            NavigationLink{
                                //
                            }label: {
                                ButtonView(title: "NEXT")
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
        FeedbackView(player: "Player 2")
    }
}
