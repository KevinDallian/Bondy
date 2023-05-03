//
//  OnBoardingView.swift
//  JungwookTeam
//
//  Created by Kevin Dallian on 03/05/23.
//

import SwiftUI

struct OnBoardingView: View {
    
    @State private var pageIndex: Int = 0
    private let onBoardingPages: [OnBoarding] = OnBoarding.onBoardingPages
    private let dotApperance = UIPageControl.appearance()
    
    var body: some View{
        NavigationView{
            ZStack{
                Color("Purple").ignoresSafeArea()
                VStack{
                    TabView(selection: $pageIndex){
                        ForEach(onBoardingPages) { page in
                            VStack{
                                Spacer()
                                OnBoardingPageView(onBoardingItem: page)
                            }
                            .tag(page.tag)
                        }
                    }
                    .tabViewStyle(.page)
                    
                    if pageIndex == onBoardingPages.count - 1{
                        NavigationLink {
                            HomeView()
                        } label: {
                            ButtonView(title: "START")
                        }
                    } else {
                        Button {
                            increamentPage()
                        } label: {
                            Text("NEXT")
                                .frame(width: 284, height: 49)
                                .background(Color("Purple"))
                                .font(.system(size: 21))
                                .multilineTextAlignment(.center)
                                .cornerRadius(7)
                                .foregroundColor(Color("Purple"))
                        }
                    }
                    
                }
            }
        }
    }
    
    func increamentPage(){
        pageIndex += 1
    }
}


struct OnBoardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnBoardingView()
    }
}
