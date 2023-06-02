//
//  SignInView.swift
//  login-app
//
//  Created by Guilherme de Carvalho Correa on 01/06/23.
//

import SwiftUI

struct SignInView: View {
  var body: some View {
    NavigationView {
      GeometryReader { geometry in
        ZStack {
          BackgroundView(color: Color("CircleBg"), size: 200, x: 0, y: 30)
          BackgroundView(color: Color("CircleBg"), size: 200, x: 100, y: -18)
          VStack(spacing: 20) {
            Spacer()
            Title2(title: "Welcome Back!")
            Image("login")
            RegularText(title: "Lorem ipsum dolor sit amet, consectetur")
            LoginFormView()
            NavigationLink(destination: GetStartedView()) {
              Text("Forgot Password ?")
                .fontWeight(.semibold)
                .font(.system(size: 16))
            }
            .offset(y: -50)
            HStack {
              LinkText(title: "Don't have an account ?")
              NavigationLink(destination: SignUpView()) {
                LinkText(title: "Sign up")
              }
            }
              .offset(y: 80)
            NavigationLink(destination: UserInfoView(), label: {
              MainButton(title: "Sign in")
            })
              .padding(.horizontal)
              .offset(y: -28)
          }
          .offset(y: -50)
        }
      }
      .background(Color("BackgroundColor"))
      .ignoresSafeArea()
    }
    .navigationBarBackButtonHidden(true)
    .navigationBarHidden(true)
  }
}

struct SignInView_Previews: PreviewProvider {
  static var previews: some View {
    SignInView()
      .previewLayout(.sizeThatFits)
  }
}
