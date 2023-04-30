//
//  FortuneWheelVIew.swift
//  JungwookTeam
//
//  Created by Kevin Dallian on 28/04/23.
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
                Rectangle()
                    .foregroundColor(Color("background"))
                    .ignoresSafeArea()
                VStack{
                    Text("Shuffle Feedback Player")
                        .font(.largeTitle.weight(.bold))
                        .foregroundColor(.white)
                        .multilineTextAlignment(.center)
                        .offset(y: -20)
                        .padding(30)
                    Text("Roll the roullete to choose player")
                        .font(.title2)
                        .foregroundColor(.white)
                        .multilineTextAlignment(.center)
                        .padding([.leading, .bottom, .trailing], 30)
                    if isEnded{
                        Text("\(players[selectedIndex])")
                            .font(.largeTitle.weight(.bold))
                            .foregroundColor(.white)
                    }else{
                        FortuneWheel(titles: players, size: 300) { i in
                            selectedIndex = i
                            isEnded = true
                        }
                    }
                    Spacer()
                    ZStack{
                        Rectangle()
                            .foregroundColor(Color("backgroundButton"))
                            .ignoresSafeArea()
                            .frame(height: 120)
                        NavigationLink{
                            FeedbackView(player: players[selectedIndex])
                        }label: {
                            if isEnded{
                                ButtonView(title: "It's Feedback Time")
                            }else{
                                ButtonView(title: "It's Feedback Time", color: Color.gray)
                            }
                            
                        }.disabled(!isEnded)
                    }                }
                    .animation(.easeInOut, value: isEnded)
            }
        }
        
    }
}

struct FortuneWheelView_Previews: PreviewProvider {
    static var previews: some View {
        FortuneWheelView(players: ["KD", "Geraldy", "CC", "Vicky", "Ricky"])
    }
}
