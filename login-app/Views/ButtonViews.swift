//
//  ButtonViews.swift
//  login-app
//
//  Created by Guilherme de Carvalho Correa on 01/06/23.
//

import SwiftUI

struct ButtonViews: View {
  var body: some View {
    MainButton(title: "Get Started")
  }
}

struct MainButton: View {
  let title: String
  
  var body: some View {
    Rectangle()
      .fill(Color("AccentColor"))
      .frame(width: .infinity, height: 60)
      .overlay {
        ButtonText(title: title)
      }
  }
}

struct ButtonViews_Previews: PreviewProvider {
  static var previews: some View {
    ButtonViews()
      .padding()
  }
}
