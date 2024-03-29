//
//  OnBoardingView.swift
//  JungwookTeam
//
//  Created by Geraldy Kumara on 27/04/23.
//

import SwiftUI

struct RuleView: View {
    var gameModel = GameModel.gameModel
    var ruleText: [RuleViewModel] = RuleViewModel.ruleViewText
    
    var body: some View{
        NavigationStack{
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
                            .frame(width: 365, height: 658)
                        VStack{
                            ZStack{
                                RoundedRectangle(cornerRadius: 10)
                                    .fill(Color("BackgroundText"))
                                    .frame(width: 330, height: 560)
                                ScrollView(.vertical, showsIndicators: true, content: {
                                    LazyVStack(alignment: .leading, spacing: 12){
                                        ForEach(ruleText) { text in
                                            Text(text.text)
                                                .padding([.top, .leading, .trailing],8)
                                                .padding(.bottom, 5)
                                        }
                                    }
                                    .font(.system(size: 16))
                                    .foregroundColor(.black)
                                    .frame(width: 330)
                                })
                                .padding([.top, .bottom], 15)
                            }
                            NavigationLink {
                                CardView(player: gameModel.choosePlayerTurn())
                            } label: {
                                Text("START")
                                    .foregroundColor(.white)
                                    .frame(width: 325, height: 49)
                                    .background(Color("Aqua"))
                                    .font(.system(size: 18))
                                    .cornerRadius(7)
                                    .bold()
                                    .padding(.bottom, 10)
                            }
                            Spacer()
                        }
                    }
                    Spacer()
                }
                .padding()
            }
        }
        .navigationBarBackButtonHidden(true)
    }
}

struct RuleView_Previews: PreviewProvider {
    static var previews: some View {
        RuleView()
    }
}
