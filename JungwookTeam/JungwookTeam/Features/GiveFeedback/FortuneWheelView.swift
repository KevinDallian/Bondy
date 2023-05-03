//
//  FortuneWheelView.swift
//  JungwookTeam
//
//  Created by Kevin Dallian on 02/05/23.
//

import SwiftUI
import FortuneWheel

struct FortuneWheelView: View {
    var players : [String]
    @State var selectedIndex = 0
    @State var isEnded = false
    
    var body: some View {
        NavigationView{
            ZStack{
                Color("Purple")
                    .ignoresSafeArea()
                VStack{
                    Spacer()
                    Text("Shuffle Feedback Player")
                        .font(.largeTitle.weight(.bold))
                        .foregroundColor(.white)
                        .multilineTextAlignment(.center)
                        .offset(y: -20)
                        .padding([.top, .horizontal], 30)
                    Text("Scroll the wheel to choose player")
                        .font(.title2)
                        .foregroundColor(.white)
                        .multilineTextAlignment(.center)
                    Spacer()
                    if isEnded{
                        Text("\(players[selectedIndex])")
                            .font(.largeTitle.weight(.bold))
                            .foregroundColor(.white)
                            .frame(height: 300)
                            .offset(y: -20)
                    }else{
                        FortuneWheel(titles: players, size: 300) { i in
                            selectedIndex = i
                            isEnded = true
                        }
                    }
                    Spacer()
                    ZStack{
                        Color("DarkPurple")
                            .ignoresSafeArea()
                        NavigationLink{
                            FeedbackView(player: players[selectedIndex], promptType: "feedback")
                        }label: {
                            if isEnded{
                                ButtonView(title: "It's Feedback Time")
                                    .shadow(color: Color(red: 68/255, green: 35/255, blue: 94/255), radius: 1, x: 0, y: 3)
                                
                            }else{
                                ButtonView(title: "It's Feedback Time", color: Color.gray)
                                    .shadow(color: Color(red: 68/255, green: 35/255, blue: 94/255), radius: 1, x: 0, y: 3)
                            }
                        }.disabled(!isEnded)
                    }.frame(height: 125)
                }
                .animation(.easeInOut, value: isEnded)
            }
        }
    }
}

struct FortuneWheelView_Previews: PreviewProvider {
    static var previews: some View {
        FortuneWheelView(players: ["KD", "CC", "Vicky", "Ricky"])
    }
}
