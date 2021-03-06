//
//  TestPlayer.swift
//  SpotifyClone
//
//  Created by Cristian Ciupac on 14.02.2022.
//

import SwiftUI
import AVKit

let url = URL(fileURLWithPath: Bundle.main.path(forResource: "audio", ofType: "mp3")!)
class TestPlayer: ObservableObject{
    
    @Published var player = try! AVAudioPlayer(contentsOf: url)
    
    @Published var isPlaying = false
    
    @Published var album = Album()
    
    func fetchAlbum(){
        
        let asset = AVAsset(url: player.url!)
        
        asset.metadata.forEach { (meta) in
            
            switch(meta.commonKey?.rawValue){
                
            case "title": album.title = meta.value as? String ?? ""
            case "artist": album.artist = meta.value as? String ?? ""
            case "type": album.type = meta.value as? String ?? ""
            case "artwork": if meta.value != nil{album.artwork = UIImage(data: meta.value as! Data)!}
            default: ()
            }
        }
    }
}
