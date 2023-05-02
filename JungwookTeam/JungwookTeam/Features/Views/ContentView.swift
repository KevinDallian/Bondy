//
//  ContentView.swift
//  JungwookTeam
//
//  Created by Geraldy Kumara on 20/04/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View{
        NavigationView {
            ZStack{
                Color("Purple").ignoresSafeArea()
                VStack{
                   RuleView()
                }
            }
        }
        .onAppear(perform: {
            playSound(sound: "chimes-7035", type: "mp3")
            audioPlayer?.numberOfLoops = 100
        })
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
