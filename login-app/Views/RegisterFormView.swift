//
//  FormView.swift
//  login-app
//
//  Created by Guilherme de Carvalho Correa on 01/06/23.
//

import SwiftUI

struct RegisterFormView: View {
  @State private var name: String = ""
  @State private var email: String = ""
  @State private var password: String = ""
  @State private var passwordConfirm: String = ""
  
  var body: some View {
      Form {
        TextField("Enter your full name", text: $name)
        TextField("Enter your email", text: $email)
        SecureField("Enter Password", text: $password)
        SecureField("Confirm Password", text: $passwordConfirm)
      }
      .foregroundColor(.black)
      .textFieldStyle(FormRoundedBorderStyle())
      .scrollContentBackground(.hidden)
      .frame(minHeight: 0, maxHeight: 360)
//      .scaledToFit()
  }
}

struct FormRoundedBorderStyle: TextFieldStyle {
  func _body(configuration: TextField<Self._Label>) -> some View {
    configuration
      .padding(.horizontal)
      .padding(.vertical, 15)
      .background(RoundedRectangle(cornerRadius: 50).fill(.white))
      .listRowBackground(Color.clear)
      .listRowSeparator(.hidden)
  }
}

struct FormView_Previews: PreviewProvider {
  static var previews: some View {
    RegisterFormView()
  }
}
