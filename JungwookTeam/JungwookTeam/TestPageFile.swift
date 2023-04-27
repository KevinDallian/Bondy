//
//  TestPageFile.swift
//  JungwookTeam
//
//  Created by Geraldy Kumara on 22/04/23.
//

import Foundation

struct Page: Identifiable, Equatable{
    let id = UUID()
    var title: String
    var description: String
    var tag: Int
    var imageUrl: String
    
    static var samplePage = Page(title: "Title example", description: "Ini example page", tag: 0, imageUrl: "Gambar1")
    
    static var samplePages: [Page] = [
        Page(title: "Welcome", description: "This is description", tag: 0, imageUrl: "Gambar2"),
        Page(title: "This is page 2", description: "This is page number 2", tag: 1, imageUrl: "Gambar1"),
        Page(title: "This is page 3", description: "This is page number 3", tag: 2, imageUrl: "Gambar3")
    ]
}
