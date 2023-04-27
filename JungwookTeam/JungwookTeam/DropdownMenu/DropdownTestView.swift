//
//  DropdownTestView.swift
//  JungwookTeam
//
//  Created by Geraldy Kumara on 27/04/23.
//

import SwiftUI

struct DropdownTestView: View {
    
    //untuk ngeliat apakah user melakukan opsi selection atau tidak
    @State private var isOption: Bool = false
    
    // untuk ngebind pilihan dari user
    @Binding var selectedOption: DropdownTest?
    
    // Untuk placeholder dropdown menu
    let placeholder: String
    
    //pilihan" option
    let option: [DropdownTest]
    
    var body: some View {
        Button(action: {
            withAnimation{
                self.isOption.toggle()
            }
        }) {
            HStack{
                Text(selectedOption == nil ? placeholder : selectedOption!.option)
            }
        }
    }
}

struct DropdownTestView_Previews: PreviewProvider {
    static var previews: some View {
        DropdownTestView(
            selectedOption: .constant(nil),
            placeholder: "Select your month",
            option: DropdownTest.testAllPlayer)
    }
}
