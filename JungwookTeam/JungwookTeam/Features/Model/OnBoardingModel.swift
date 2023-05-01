//
//  OnBoardingModel.swift
//  JungwookTeam
//
//  Created by Geraldy Kumara on 30/04/23.
//

import Foundation

struct OnBoarding: Identifiable, Equatable {
    let id = UUID()
    var image: String
    var description: String
    var tag: Int
    
    static var onBoardingPage: OnBoarding = OnBoarding(image: "Gambar1", description: "Share your creativity and unique perspective with your family through your story-telling.", tag: 0)
    
    static var onBoardingPages: [OnBoarding] = [
        OnBoarding(image: "Gambar1", description: "Share your creativity and unique perspective with your family through your story-telling.", tag: 0),
        OnBoarding(image: "Gambar2", description: "Listen without judging, interupting, or jumping to conclusions when you have different thoughts.", tag: 1),
        OnBoarding(image: "Gambar3", description: "Live in the moment and enjoy the fun journey to get to know your family.", tag: 2)
    ]
}


