//
//  ContentView.swift
//  Avocado
//
//  Created by Noel Velasco on 3/11/22.
//

import SwiftUI

struct ContentView: View {
  var headers: [Header] = headersData

  var body: some View {
    ScrollView(.vertical, showsIndicators: false) {
      VStack(alignment: .center, spacing: 20) {
          // MARK: - Header

        ScrollView(.horizontal, showsIndicators: false) {
          HStack(alignment: .top, spacing: 0) {
            ForEach(headers) { item in
              HeaderView(header: item)
            }

          }
        }

        // MARK: - Dishes
        Text("Avocado Dishes")
          .fontWeight(.bold)
          .modifier(TitleModifier())

        DishesView()
          .frame(maxWidth: 640)

          // MARK: - Footer

        VStack(alignment: .center, spacing: 20) {
          Text("All About Avocados")
            .font(.system(.title, design: .serif))
            .modifier(TitleModifier())

          Text("Everything you wanted to know about avocados but were too afraid to ask.")
            .font(.system(.body, design: .serif))
            .multilineTextAlignment(.center)
            .foregroundColor(Color.gray)
            .frame(minHeight: 60)
        }
        .frame(maxWidth: 640)
        .padding()
        .padding(.bottom, 85)
      }
    }
    .edgesIgnoringSafeArea(.all)
    .padding(0)
  }
}

struct TitleModifier: ViewModifier {
  func body(content: Content) -> some View {
    content
      .fontWeight(.bold)
      .foregroundColor(Color("ColorGreenAdaptive"))
      .padding(8)
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView(headers: headersData)
      .preferredColorScheme(.dark)
  }
}
