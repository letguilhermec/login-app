//
//  BackgroundView.swift
//  login-app
//
//  Created by Guilherme de Carvalho Correa on 01/06/23.
//

import SwiftUI

struct BackgroundView: View {
  let color: Color
  let size: CGFloat
  let x: CGFloat
  let y: CGFloat
  
  var body: some View {
    Circle()
      .fill(color)
      .frame(width: size, height: size)
      .position(x: x, y: y)
  }
}

struct BackgroundView_Previews: PreviewProvider {
    static var previews: some View {
        BackgroundView(color: Color("CircleBg"), size: 200, x: 0, y: -10)
    }
}
