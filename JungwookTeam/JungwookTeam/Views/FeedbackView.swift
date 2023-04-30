//
//  FeedbackView.swift
//  JungwookTeam
//
//  Created by Kevin Dallian on 30/04/23.
//

import SwiftUI

struct FeedbackView: View {
    @State var isRolled = false
    var body: some View {
        Text("Harusnya ini Feedback View cuman nanti").navigationBarBackButtonHidden(true)
    }
}

struct FeedbackView_Previews: PreviewProvider {
    static var previews: some View {
        FeedbackView()
    }
}
