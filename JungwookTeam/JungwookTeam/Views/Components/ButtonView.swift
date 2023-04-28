//
//  ButtonView.swift
//  JungwookTeam
//
//  Created by Kevin Dallian on 28/04/23.
//

import SwiftUI

struct ButtonView: View {
    let title : String
    let action : () -> Void
    
    var body: some View {
        Button(action: action) {
            Text("\(title)")
                .font(.title2.weight(.bold))
                .frame(width: 284, height: 49)
                .foregroundColor(.white)
                .background(Color(red: 72/255, green: 182/255, blue: 205/255))
                .cornerRadius(5)
        }
    }
}

struct ButtonView_Previews: PreviewProvider {
    static var previews: some View {
        ButtonView(title: "Button") {
            
        }
    }
}
