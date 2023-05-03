//
//  OnBoardingView.swift
//  JungwookTeam
//
//  Created by Geraldy Kumara on 27/04/23.
//

import SwiftUI

struct RuleView: View {
    
    private var ruleText: [RuleViewModel] = RuleViewModel.ruleViewText
    
    var body: some View{
        NavigationView{
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
                                
                            } label: {
                                ButtonView(title: "START")
                            }
                            Spacer()
                        }
                    }
                   
                    Spacer()
                }
                .padding()
            }
        }
    }
}

struct RuleView_Previews: PreviewProvider {
    static var previews: some View {
        RuleView()
    }
}
