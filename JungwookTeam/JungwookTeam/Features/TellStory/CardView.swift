//
//  OnBoardingView.swift
//  JungwookTeam
//
//  Created by Geraldy Kumara on 27/04/23.
//

import SwiftUI

struct CardView: View {
    
    private var data: [String] = ["Ball", "Cat", "Butterfly", "CardBack"]
    
    private let adaptiveColumn = [
        GridItem(.adaptive(minimum: 120))
    ]
    
    @State private var cardPulse: CGFloat = 1
    @State private var isTapped: Bool = false
    
    var body: some View{
        ZStack{
            Color("Purple").ignoresSafeArea()
            VStack{
                Text("Tell us your story!")
                    .foregroundColor(.white)
                    .multilineTextAlignment(.center)
                    .font(.largeTitle)
                    .bold()
                
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
                        cardPulse *= 1.02
                    }
                    
                    ZStack{
                        Color("DarkPurple").ignoresSafeArea()
                        VStack{
                            Text("PLAYER 1")
                                .padding(.top, 30)
                                .font(.system(size: 21))
                                .fontWeight(.heavy)
                                .foregroundColor(.white)
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
                            
                            Text("Make a story with all cards about what reminds you of other players")
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
                    
                    LazyVGrid(columns: adaptiveColumn, spacing: 10){
                        ForEach(data, id: \.self){ number in
                            ZStack{
                                Image(number)
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
                            Text("PLAYER 1")
                                .font(.system(size: 21))
                                .fontWeight(.heavy)
                                .foregroundColor(.white)
                            
                            Text("Click next if you are finished telling your story")
                                .font(.system(size: 12))
                                .fontWeight(.medium)
                                .foregroundColor(.white)
                                .padding(.top, -6)
                            Button {
                                
                            } label: {
                                Text("NEXT")
                                    .foregroundColor(.white)
                                    .frame(width: 284, height: 49)
                                    .background(Color("Aqua"))
                                    .font(.system(size: 18))
                                    .cornerRadius(7)
                                    .bold()
                            }
                        }
                        .multilineTextAlignment(.center)
                    }
                }
            }
            .animation(.easeInOut(duration: 1.2), value: isTapped)
        }
    }
}



struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView()
    }
}
