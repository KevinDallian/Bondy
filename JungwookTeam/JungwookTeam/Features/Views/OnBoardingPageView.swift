//
//  OnBoardingPageView.swift
//  JungwookTeam
//
//  Created by Geraldy Kumara on 30/04/23.
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
                    .frame(width: 300, height: 300)
                
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
