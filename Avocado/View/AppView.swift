//
//  AppView.swift
//  Avocado
//
//  Created by Noel Velasco on 3/11/22.
//

import SwiftUI

struct AppView: View {
  var body: some View {
    TabView {
      AvocadosView()
        .tabItem({
          Image("tabicon-branch")
          Text("Avocados")
        })
      ContentView()
        .tabItem({
          Image("tabicon-book")
          Text("Recipes")
        })
      RipeningStagesView()
        .tabItem({
          Image("tabicon-avocado")
          Text("Ripening")
        })
      SettingView()
        .tabItem({
          Image("tabicon-settings")
          Text("Settings")
        })
    }
    .edgesIgnoringSafeArea(.top)
    .accentColor(Color.primary)
  }
}

struct AppView_Previews: PreviewProvider {
  static var previews: some View {
    AppView()
  }
}
