//
//  ButtonView.swift
//  JungwookTeam
//
//  Created by Kevin Dallian on 02/05/23.
//

import SwiftUI

struct ButtonView: View {
    let title : String
    let color : Color
    
    init(title : String = "Button", color: Color = Color(red: 72/255, green: 182/255, blue: 205/255)){
        self.title = title
        self.color = color
    }
    
    var body: some View {
        Text("\(title)")
            .font(.title2.weight(.bold))
            .frame(width: 284, height: 49)
            .foregroundColor(.white)
            .background(color)
            .cornerRadius(5)
    }
}

struct ButtonView_Previews: PreviewProvider {
    static var previews: some View {
        ButtonView()
    }
}
