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
            FortuneWheelView(players: ["Geraldy", "CC", "Vicky"])
        }
    }
}
