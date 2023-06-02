//
//  RegisterView.swift
//  login-app
//
//  Created by Guilherme de Carvalho Correa on 01/06/23.
//

import SwiftUI

struct SignUpView: View {
  var body: some View {
    NavigationView {
      GeometryReader { geometry in
        ZStack {
          BackgroundView(color: Color("CircleBg"), size: 200, x: 0, y: 30)
          BackgroundView(color: Color("CircleBg"), size: 200, x: 100, y: -18)
          VStack {
            VStack {
              Title2(title: "Welcome to TODO")
              RegularText(title: "Lorem ipsum dolor sit amet, consectetur")
                .padding(.top, 30)
              RegisterFormView()
            }
              .position(x: geometry.size.width / 2, y: geometry.size.height / 2 + 50)
            HStack {
              LinkText(title: "Already have an account ?")
              NavigationLink(destination: SignInView()) {
                LinkText(title: "Sign in")
              }
            }
              .offset(y: 20)
            Spacer()
            NavigationLink(destination: SignUpView(), label: {
              MainButton(title: "Rejester")
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

struct SignUpView_Previews: PreviewProvider {
  static var previews: some View {
    SignUpView()
      .previewLayout(.sizeThatFits)
  }
}
