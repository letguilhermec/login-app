//
//  TextViews.swift
//  login-app
//
//  Created by Guilherme de Carvalho Correa on 01/06/23.
//

import SwiftUI

struct TextViews: View {
  var body: some View {
    VStack {
      UserFieldType(title: "name")
      UserFieldValue(title: "Guilherme Correa")
    }
  }
}

struct Title1: View {
  let title: String
  
  var body: some View {
    Text(title)
      .fontWeight(.black)
      .lineSpacing(24)
  }
}

struct Title2: View {
  let title: String
  
  var body: some View {
    Text(title)
      .fontWeight(.black)
      .font(.system(size: 20))
      .lineSpacing(0.3)
  }
}

struct RegularText: View {
  let title: String
  
  var body: some View {
    Text(title)
      .font(.system(size: 13))
      .lineSpacing(1.9)
      .multilineTextAlignment(.center)
  }
}

struct ButtonText: View {
  let title: String
  
  var body: some View {
    Text(title)
      .fontWeight(.bold)
      .foregroundColor(.white)
      .font(.system(size: 18))
  }
}

struct LinkText: View {
  let title: String
  
  var body: some View {
    Text(title)
      .fontWeight(.semibold)
      .font(.system(size: 14))
      .lineSpacing(0.2)
  }
}

struct UsernameText: View {
  let title: String
  
  var body: some View {
    Text(title)
      .fontWeight(.black)
      .font(.system(size: 18))
  }
}

struct UserFieldType: View {
  let title: String
  
  var body: some View {
    Text(title)
      .fontWeight(.semibold)
      .font(.system(size: 13))
      .opacity(0.54)
  }
}

struct UserFieldValue: View {
  let title: String
  
  var body: some View {
    Text(title)
      .fontWeight(.semibold)
      .font(.system(size: 13))
  }
}

struct UserFieldBtn: View {
  let title: String
  
  var body: some View {
    Text(title)
      .font(.system(size: 13))
      .foregroundColor(Color("AccentColor"))
  }
}

struct TextViews_Previews: PreviewProvider {
  static var previews: some View {
    TextViews()
  }
}
