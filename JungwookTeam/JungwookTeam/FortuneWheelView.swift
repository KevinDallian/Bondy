//
//  FortuneWheelVIew.swift
//  JungwookTeam
//
//  Created by Kevin Dallian on 28/04/23.
//

import SwiftUI
import FortuneWheel

struct FortuneWheelView: View {
    private var players = ["KD", "Geraldy", "CC", "Vicky", "Ricky"]
    @State var selectedIndex = 0
    @State var isEnded = false
        
        var body: some View {
            ZStack {
                FortuneWheel(titles: players, size: 320) { i in
                    selectedIndex = i
                    isEnded = true
                }
            }
            .alert("Wheel ended", isPresented: $isEnded) {
                Button {
                    
                } label: {
                    Text("Back to Menu")
                }
            } message: {
                Text("\(players[selectedIndex])")
            }
        }
}

struct FortuneWheelView_Previews: PreviewProvider {
    static var previews: some View {
        FortuneWheelView()
    }
}
