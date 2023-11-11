//
//  AvocadosView.swift
//  Avocado
//
//  Created by Noel Velasco on 3/11/22.
//

import SwiftUI

struct AvocadosView: View {
  @State var pulseAnimation: Bool = false

  var body: some View {
    VStack {
      Spacer()
      Image("avocado")
        .resizable()
        .aspectRatio(contentMode: .fit)
        .frame(width: 240, height: 240, alignment: .center)
        .shadow(color: Color("ColorBlackTransparentDark"), radius: 12, x: 0, y: 8)
        .scaleEffect(self.pulseAnimation ? 1 : 0.9)
        .opacity(self.pulseAnimation ? 1 : 0.9)
        .animation(.easeInOut(duration: 1.5).repeatForever(autoreverses: true))
      Text("Avocados")
        .font(.system(size: 42, weight: .bold, design: .serif))
        .foregroundColor(Color.white)
        .padding()
        .shadow(color: Color("ColorBlackTransparentDark"), radius: 4, x: 0, y: 4)
      Text("""
Creamy, green, and full of nutrients! Avocado is a powerhouse ingredient at any meal. Enjoy these handpicked avocado recipes for breakfast, lunch, dinner & more!
""")
        .lineLimit(nil)
        .font(.system(.headline, design: .serif))
        .foregroundColor(Color("ColorGreenLight"))
        .multilineTextAlignment(.center)
        .lineSpacing(8)
        .frame(maxWidth: 640, minHeight: 120)
      Spacer()
    }
    .background(
      Image("background")
        .resizable()
        .aspectRatio(contentMode: .fill)
    )
    .edgesIgnoringSafeArea(.all)
    .onAppear(perform: {
      self.pulseAnimation.toggle()
    })
  }
}

struct AvocadosView_Previews: PreviewProvider {
  static var previews: some View {
    AvocadosView()
      .environment(\.colorScheme, .dark)
  }
}
