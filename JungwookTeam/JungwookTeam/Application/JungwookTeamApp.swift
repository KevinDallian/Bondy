//
//  JungwookTeamApp.swift
//  JungwookTeam
//
//  Created by Geraldy Kumara on 20/04/23.
//

import SwiftUI

@main
struct JungwookTeamApp: App {
    var body: some Scene {
        WindowGroup {
            if UserDefaults.standard.bool(forKey: "skipOnBoarding") == false{
                OnBoardingView()
            }else{
                HomeView()
            }
            
        }
    }
}
