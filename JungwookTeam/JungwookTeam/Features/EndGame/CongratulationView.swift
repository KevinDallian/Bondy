//
//  CongratulationView.swift
//  JungwookTeam
//
//  Created by Catherine Candice on 04/05/23.
//

import SwiftUI

struct CongratulationView: View {
    @State var navigateToNextView = false
    var body: some View {
        ZStack {
            Color("Purple")
                .ignoresSafeArea()
            VStack {
                Text("Well done!")
                    .font(.largeTitle.weight(.bold))
                    .foregroundColor(.white)
                //                    .offset(y: 100)
                    .padding(.top, 10)
                Text("You complete the game!!")
                    .font(.title.weight(.semibold))
                    .foregroundColor(.white)
                Spacer()
                LottieView(name: "Clap")
                    .scaleEffect(0.25)
                    .frame(width: 390, height: 324.72)
                    .position(x: 195, y: 260)
                VStack {
                    Button {
                        // nanti diganti buat navigate ke view yang card buat tell story
                        navigateToNextView = true
                    } label: {
                        ButtonView(title: "PLAY AGAIN")
                    }
                    .padding(.bottom, 30)
                    
                    Button {
                        // nanti diganti buat navigate ke view yang share feeling
                        navigateToNextView = true
                    } label: {
                        ButtonView(title: "END GAME", color: Color("Red"))
                    }
                    .padding(.bottom, 20)
                }
                
            }
            
            
        }
    }
}

struct CongratulationView_Previews: PreviewProvider {
    static var previews: some View {
        CongratulationView()
    }
}
