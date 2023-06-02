//
//  UserInfoView.swift
//  login-app
//
//  Created by Guilherme de Carvalho Correa on 02/06/23.
//

import SwiftUI

struct UserInfoView: View {
  var body: some View {
    NavigationView {
      GeometryReader { geometry in
        ZStack {
          VStack(spacing: 0) {
            Rectangle()
              .fill(Color("UserInfoBg"))
              .frame(width: .infinity, height: geometry.size.height * 0.36)
            VStack(spacing: 0) {
              Color("BackgroundColor")
                .overlay {
                  VStack(spacing: 10) {
                    Spacer()
                    UsernameText(title: "Ashini Imanthika")
                      .padding(.bottom, 10)
                    VStack(alignment: .leading) {
                      UserFieldType(title: "Email")
                        .padding(.bottom, 3)
                      HStack {
                        UserFieldValue(title: "abcde@gmail.com")
                          .padding(.leading, 40)
                        Spacer()
                        UserFieldBtn(title: "Edit")
                      }
                    }
                    .padding()
                    VStack(alignment: .leading) {
                      UserFieldType(title: "Mobile")
                        .padding(.bottom, 3)
                      HStack {
                        UserFieldValue(title: "0712345678")
                          .padding(.leading, 40)
                        Spacer()
                        UserFieldBtn(title: "Verify")
                        Text("|")
                          .foregroundColor(Color("AccentColor"))
                        UserFieldBtn(title: "Edit")
                      }
                    }
                    .padding()
                    VStack(alignment: .leading) {
                      UserFieldType(title: "Password")
                        .padding(.bottom, 3)
                      HStack {
                        UserFieldValue(title: "********")
                          .padding(.leading, 40)
                        Spacer()
                        UserFieldBtn(title: "Edit")
                      }
                    }
                    .padding()
                    Spacer()
                    NavigationLink(destination: GetStartedView(), label: {
                      MainButton(title: "Sign out")
                    })
                    .padding(.horizontal)
                    .offset(y: -78)
                  }
                  .frame(width: geometry.size.width)
                }
            }
          }
          Image("user")
            .frame(width: geometry.size.height * 0.24, height: geometry.size.height * 0.24)
            .position(x: geometry.size.width / 2, y: geometry.size.height * 0.33)
          BackgroundView(color: Color("CircleBg"), size: 200, x: 0, y: 30)
          BackgroundView(color: Color("CircleBg"), size: 200, x: 100, y: -18)
        }
        .ignoresSafeArea()
      }
    }
    .navigationBarBackButtonHidden(true)
    .navigationBarHidden(true)
  }
}

struct UserInfoView_Previews: PreviewProvider {
    static var previews: some View {
        UserInfoView()
    }
}
