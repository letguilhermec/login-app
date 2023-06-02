//
//  GetStartedView.swift
//  login-app
//
//  Created by Guilherme de Carvalho Correa on 01/06/23.
//

import SwiftUI

struct GetStartedView: View {
  var body: some View {
    NavigationView {
      GeometryReader { geometry in
        ZStack {
          BackgroundView(color: Color("CircleBg"), size: 200, x: 0, y: 30)
          BackgroundView(color: Color("CircleBg"), size: 200, x: 100, y: -18)
          VStack {
            Spacer()
            Image("get_started")
              .frame(width: 218, height: 186)
              .padding(.vertical)
            Title1(title: "Get things done with ToDo")
              .padding(.vertical)
            RegularText(title: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sit feugiat ultricies dictumst volutpat proin semper massa, convallis nunc.")
              .frame(width: 296, height: 67)
            Spacer()
            NavigationLink(destination: SignUpView(), label: {
              MainButton(title: "Get Started")
            })
            .padding(.horizontal)
            .offset(y: -78)
          }
        }
      }
      .background(Color("BackgroundColor"))
      .ignoresSafeArea()
    }
    .navigationBarBackButtonHidden(true)
    .navigationBarHidden(true)
  }
}

struct GetStartedView_Previews: PreviewProvider {
  static var previews: some View {
    GetStartedView()
      .previewLayout(.sizeThatFits)
  }
}
