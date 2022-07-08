//
//  TapBar.swift
//  SpotifyClone
//
//  Created by Cristian Ciupac on 11.02.2022.
//

import SwiftUI

struct TapBar: View {
    var body: some View {
        TabView {
            ContentView().tabItem({
                Image(systemName: "music.note.house")
                Text("Home")
            })
                .tag(1)
            Search().tabItem({
                Image(systemName: "magnifyingglass.circle")
                Text("Search")
            })
                .tag(2)
            Librari().tabItem({
                Image(systemName: "music.note.list")
                Text("Librari")
            })
        }
    }
}

struct TapBar_Previews: PreviewProvider {
    static var previews: some View {
        TapBar()
    }
}
