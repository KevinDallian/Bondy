//
//  LottieView.swift
//  JungwookTeam
//
//  Created by Kevin Dallian on 27/04/23.
//

import SwiftUI
import Lottie
 
struct LottieView : UIViewRepresentable{
    let name : String
    let loopMode : LottieLoopMode
    let animationSpeed : CGFloat
    
    init(name : String, loopMode : LottieLoopMode = .playOnce, animationSpeed : CGFloat = 1){
        self.name = name
        self.loopMode = loopMode
        self.animationSpeed = animationSpeed
    }
    
    func makeUIView(context: Context) -> LottieAnimationView {
        let animationView = LottieAnimationView(name: name)
        animationView.loopMode = loopMode
        animationView.animationSpeed = animationSpeed
        animationView.play()
        return animationView
    }
    
    func updateUIView(_ uiView: Lottie.LottieAnimationView, context: Context) {
        // used to update UIView whenever a state changes
        // not used yet
    }
}

struct LottieView_Previews: PreviewProvider {
    static var previews: some View {
        ZStack{
            Rectangle()
            LottieView(name: "Clap", loopMode: .loop)
                .scaleEffect(0.2)
            
        }
    }
}
// to use Lottie View
// LottieView(name, loopMode, animationSpeed)
// name refers to the name of the lottie file
// loopMode and animationSpeed is optional
