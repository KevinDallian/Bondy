//
//  TestPageView.swift
//  JungwookTeam
//
//  Created by Geraldy Kumara on 22/04/23.
//

import SwiftUI

struct TestPageView: View {
    var page: Page
    
    var body: some View {
        VStack(spacing: 20){
            Image("\(page.imageUrl)")
                .resizable()
                .scaledToFit()
                .padding()
                .cornerRadius(10)
                .background(.gray.opacity(0.10))
                .cornerRadius(10)
                .padding()
            
            Text(page.title)
            
            Text(page.description)
                .font(.subheadline)
                .frame(width: 300)
        }
    }
}

struct TestPageView_Previews: PreviewProvider {
    static var previews: some View {
        TestPageView(page: Page.samplePage)
    }
}
