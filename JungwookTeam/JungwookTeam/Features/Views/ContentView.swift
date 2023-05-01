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
                   OnBoardingView()
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
