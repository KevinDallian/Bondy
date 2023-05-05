//
//  LessonView.swift
//  LessonLearned
//
//  Created by Vicky Goh on 03/05/23.
//

import SwiftUI

struct LessonView: View {
    @State var navigateToNextView = false
    var body: some View {
        NavigationStack{
            ZStack {
                Color(red: 103/255, green: 57/255, blue: 155/255).ignoresSafeArea()
                VStack {
                    VStack {
                        Text("Congratulations!")
                            .font(.system(size: 36))
                        
                        Text("You finish the game!")
                            .font(.system(size: 21))
                            .padding(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 83))
                            .frame(height:8)
                        Text("We hope you enjoy and learn many things as much as we do!")
                            .foregroundColor(.white)
                            .frame(width: 260,height: 40, alignment: .leading)
                            .font(.system(size: 16))
                            .fontWeight(.medium)
                            .padding(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 25))
                    }
                    .fontWeight(.heavy)
                    .foregroundColor(.white)
                    .multilineTextAlignment(.leading)
                    .padding(EdgeInsets(top: 37, leading: 0, bottom: 0, trailing: 0))
                                 
                    ZStack {
                        RoundedRectangle(cornerRadius: 8)
                            .frame(width: 315, height: 230)
                            .foregroundColor(Color(red: 79/255, green: 33/255, blue: 112/255))

                        VStack {
                            Text("Here are some lesson learned from the entire game!")
                                .font(.system(size: 16))
                                .fontWeight(.medium)
                                .foregroundColor(.white)
                                .padding(EdgeInsets(top: 10, leading: 25, bottom: 0, trailing: 25))
                            
                            RoundedRectangle(cornerRadius: 8)
                                .frame(width: 285, height: 165)
                                .foregroundColor(Color(red: 253/255, green: 234/255, blue: 253/255))
                                .padding(EdgeInsets(top: 0, leading: 15, bottom: 10, trailing: 15))
                           
                        }
                        ZStack{
                            VStack (alignment: .leading){
                                Text("Be more open-minded")
                                Text("Practice Active Listening")
                                    .padding(EdgeInsets(top: 10, leading: 0, bottom: 10, trailing: 0))
                                Text("Improve Family Relationship")
                            }
                            .font(.system(size: 16))
                            .fontWeight(.bold)
                            .padding(EdgeInsets(top: 40, leading: 0, bottom: 0, trailing: 39))
                        }
                    }
                    .padding(EdgeInsets(top: 57, leading: 38, bottom: 200, trailing: 37))
                        Spacer()
                        
                    ZStack{
                        Button{
                            navigateToNextView = true
                        }label:{
                            ButtonView(title: "GO TO HOME PAGE")
                        }
                    }
                    Spacer()
                    }
                .navigationDestination(isPresented: $navigateToNextView){
                    HomeView()
                }
                .multilineTextAlignment(.leading)
            }
        }
        .navigationBarBackButtonHidden(true)
    }
}

struct LessonView_Previews: PreviewProvider {
    static var previews: some View {
        LessonView()
    }
}
