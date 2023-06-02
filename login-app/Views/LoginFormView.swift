//
//  LoginFormView.swift
//  login-app
//
//  Created by Guilherme de Carvalho Correa on 01/06/23.
//

import SwiftUI

struct LoginFormView: View {
  @State private var email: String = ""
  @State private var password: String = ""
  
  var body: some View {
      Form {
        TextField("Enter your email", text: $email)
        SecureField("Enter your password", text: $password)
      }
      .foregroundColor(.black)
      .textFieldStyle(FormRoundedBorderStyle())
      .scrollContentBackground(.hidden)
      .frame(minHeight: 0, maxHeight: 220)
  }
}

struct LoginFormView_Previews: PreviewProvider {
  static var previews: some View {
    LoginFormView()
  }
}
