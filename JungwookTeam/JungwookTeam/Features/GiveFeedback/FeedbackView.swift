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
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.horizontal, 30.0)
                    Text("Here are some hints that can help you give feedback for your storyteller!")
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
                        VStack(alignment: .leading, spacing: 12){
                            if promptType == "feedback"{
                                Text("1. How you feel after hearing their stories? Please explain it!")
                                Text("2. Do their stories meet your expectations? Please describe why!")
                                Text("3. What are the new things you learn after hearing their stories?")
                            
                            }else if promptType == "storyteller"{
                                Text("1. How you feel after hearing their feedback? Please explain it!")
                                Text("2. Do their stories meet your expectations? Please describe why!")
                                Text("3. What are the new things you learn after hearing their feedback?")
                            }
                        }.offset(y: -60)
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
                                //
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
        FeedbackView(player: "Player 2", promptType: "feedback")
    }
}
