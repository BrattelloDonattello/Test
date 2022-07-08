//
//  Songs.swift
//  SpotifyClone
//
//  Created by Cristian Ciupac on 11.02.2022.
//

import SwiftUI

struct Songs: Identifiable {
   var id = UUID()
    var image: String
    var name: String
    var artist: String
    var time: String
}

var songs = [
    Songs(image: "a$aspRocky", name: "Long live A$AP", artist: "A$AP Rocky", time: "4:49"),
    Songs(image: "a$aspRocky", name: "F**cking Problems", artist: "A$AP Rocky", time: "3:53"),
    Songs(image: "a$aspRocky", name: "LVL", artist: "A$AP Rocky", time: "3:40"),
    Songs(image: "a$aspRocky", name: "Pain(feat. OverDoz.", artist: "A$AP Rocky", time: "3:53"),
    Songs(image: "a$aspRocky", name: "Goldie", artist: "A$AP Rocky", time: "3:12"),
    Songs(image: "a$aspRocky", name: "Hell(feat. Santigold", artist: "A$AP Rocky", time: "3:51")
]

