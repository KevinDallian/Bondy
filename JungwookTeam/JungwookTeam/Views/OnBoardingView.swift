////
////  OnBoardingView.swift
////  JungwookTeam
////
////  Created by Geraldy Kumara on 27/04/23.
////
//
//import SwiftUI
//
//struct OnBoardingView: View {
//
//    @Binding var pageIndex: Bool
//    private let pages: [Page] = Page.samplePages
//    private let dotAppearance = UIPageControl.appearance()
//    
//    var body: some View {
//        TabView{
//            ForEach(pages) { page in
//                VStack{
//                    Spacer()
//                    PageView(showDismissButton: false, page: page)
//                    Spacer()
//                }
//            }
//        }
//        .tabViewStyle(PageTabViewStyle())
//    }
//}
//
//struct PageView: View{
//
//    let showDismissButton: Bool
//    var page: Page
//    @Binding var pageIndex: Bool
//    var body: some View{
//        VStack{
//            Image("\(page.imageUrl)")
//                .resizable()
//                .scaledToFit()
//                .padding()
//                .cornerRadius(10)
//                .background(.gray.opacity(0.10))
//                .cornerRadius(10)
//                .padding()
//            
//            Text(page.title)
//            
//            Text(page.description)
//                .font(.subheadline)
//                .frame(width: 300)
//            
//            if showDismissButton {
//                Button {
//                    pageIndex.toggle()
//                } label: {
//                    Text("Play")
//                }
//                .buttonStyle(.bordered)
//            }
//        }
//    }
//    
//    struct OnBoardingView_Previews: PreviewProvider {
//        static var previews: some View {
//            OnBoardingView()
//        }
//    }
//}
