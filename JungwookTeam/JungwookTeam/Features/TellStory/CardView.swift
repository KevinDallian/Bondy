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
    
    @State private var isTapped: Bool = false
    
    var body: some View{
        ZStack{
            Color("Purple").ignoresSafeArea()
            VStack{
                Text("Tell us your story!")
                    .foregroundColor(.white)
                    .multilineTextAlignment(.center)
                    .font(.system(size: 30))
                    .bold()
                
                if !isTapped {
                    Text("asd")
            Spacer()
                } else {
                    ZStack{
                        Color("DarkPurple")
                        VStack{
                            Text("Prompt Storytelling")
                                .font(.system(size: 14))
                                .frame(width: 303, height: 27)
                                .background(.white)
                            
                            Text("What reminds you of your other player?")
                                .font(.system(size: 14))
                                .frame(width: 303, height: 40)
                                .foregroundColor(.white)
                                .padding(.top, -10)
                        }
                        .multilineTextAlignment(.center)
                    }
                    .padding()
                    .frame(width: 303, height:60)
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
        }
    }
}



struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView()
    }
}
