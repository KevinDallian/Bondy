//
//  HomeView.swift
//  JungwookTeam
//
//  Created by Kevin Dallian on 28/04/23.
//

import SwiftUI

struct HomeView: View {
    @State private var counter = 1
    @State private var names : [String] = [""]
    @StateObject var cdm = CoreDataModel()
    var body: some View {
        NavigationView {
            ZStack{
                Color("background")
                    .ignoresSafeArea()
                VStack(alignment: .leading){
                    Text("Welcome")
                        .font(.largeTitle.weight(.bold))
                        .foregroundColor(.white)
                    Spacer()
                    Text("Insert player name,")
                        .font(.title.weight(.bold))
                        .foregroundColor(.white)
                        .padding(.horizontal, 20.0)
                    Form{
                        Section{
                            ForEach(0 ..< counter, id: \.self) { index in
                                TextField("Name", text: self.$names[index])
                            }.onDelete { indexSet in
                                names.remove(atOffsets: indexSet)
                                counter -= 1
                            }
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
                                        .foregroundColor(Color("purple"))
                                    Text("Add Player")
                                        .foregroundColor(Color("purple"))
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
                        NavigationLink{
                            CoreDataTest(cdm: cdm, players: names)
                            // link ke StoryView
                        }label: {
                            ButtonView(title: "Start")
                        }
                        Spacer()
                    }
                    
                }.padding()
                
            }
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
