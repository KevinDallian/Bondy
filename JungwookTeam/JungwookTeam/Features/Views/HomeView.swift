//
//  HomeView.swift
//  JungwookTeam
//
//  Created by Kevin Dallian on 02/05/23.
//

import SwiftUI

struct HomeView: View {
    @State private var counter = 2
    @State var names : [String] = ["", ""]
    @State var showingNextView = false
    var gameModel = GameModel.gameModel
    var body: some View {
        NavigationStack {
            ZStack{
                Color("Purple")
                    .ignoresSafeArea()
                VStack(alignment: .leading){
                    Text("Welcome")
                        .font(.largeTitle.weight(.bold))
                        .foregroundColor(.white)
                        .padding(.horizontal, 20.0)
                    Text("Let's play with 2 - 4 people!")
                        .font(.title2.weight(.bold))
                        .foregroundColor(.white)
                        .padding(.horizontal, 20.0)
                    Spacer()
                    Text("Insert player name,")
                        .font(.title3.weight(.bold))
                        .foregroundColor(.white)
                        .padding(.horizontal, 20.0)
                    Form{
                        Section{
                            ForEach(0 ..< counter, id: \.self) { index in
                                TextField("Name", text: self.$names[index])
                                    .disableAutocorrection(true)
                            }.onDelete { indexSet in
                                names.remove(atOffsets: indexSet)
                                counter -= 1
                            }
                            if counter != 4{
                                withAnimation{
                                    Button{
                                        if counter <= 3 {
                                            withAnimation{
                                                names.append("")
                                                counter += 1
                                            }
                                        }
                                    }label: {
                                        HStack{
                                            Image(systemName: "plus.circle")
                                                .foregroundColor(Color("Purple"))
                                            Text("Add Player")
                                                .foregroundColor(Color("Purple"))
                                        }
                                    }
                                }
                            }
                        }
                    }
                    .padding(.top, -25.0)
                    .scrollContentBackground(.hidden)
                        .frame(height: 400)
                        .offset(y: -20)
                    Spacer()
                    HStack{
                        Spacer()
                        Button{
                            gameModel.initializeGame(names: names)
                            showingNextView = true
                        }label: {
                            ButtonView(title: "START")
                        }
                        Spacer()
                    }
                }.padding()
                    .navigationDestination(isPresented: $showingNextView) {
                        RuleView()
                    }
            }
            
        }
        
        .navigationBarBackButtonHidden(true)
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
