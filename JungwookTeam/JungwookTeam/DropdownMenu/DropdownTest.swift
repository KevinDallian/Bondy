//
//  DropdownTest.swift
//  JungwookTeam
//
//  Created by Geraldy Kumara on 27/04/23.
//

import SwiftUI

struct DropdownTest: Hashable, Identifiable{
    let id = UUID().uuidString
    let option: String
}

extension DropdownTest{
    static let testOnePlayer: DropdownTest = DropdownTest(option: "Player 2")
    static let testAllPlayer: [DropdownTest] = [
        DropdownTest(option: "Player 3"),
        DropdownTest(option: "Player 4")
    ]
}
