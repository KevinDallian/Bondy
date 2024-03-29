//
//  OnBoardingPageView.swift
//  JungwookTeam
//
//  Created by Kevin Dallian on 03/05/23.
//

import SwiftUI

struct OnBoardingPageView: View {
    
    var onBoardingItem: OnBoarding
    
    var body: some View {
        ZStack{
            Color("Purple").ignoresSafeArea()
            VStack{
                Image("\(onBoardingItem.image)")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 312, height: 408)
                
                Text(onBoardingItem.description)
                    .foregroundColor(.white)
                    .font(.system(size: 18))
                    .multilineTextAlignment(.center)
                    .padding()
                    .frame(width: 350)
            }
        }
    }
}


struct OnBoardingPageView_Previews: PreviewProvider {
    static var previews: some View {
        OnBoardingPageView(onBoardingItem: OnBoarding.onBoardingPage)
    }
}
