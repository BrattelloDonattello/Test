//
//  HomeTestP.swift
//  SpotifyClone
//
//  Created by Cristian Ciupac on 14.02.2022.
//

import SwiftUI

struct HomeTestP: View {
    @StateObject var homeData = TestPlayer()
    @State var width : CGFloat = UIScreen.main.bounds.height < 750 ? 130 : 230
    var body: some View {
        
        VStack {
            ZStack {
                Image(uiImage: homeData.album.artwork)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: width, height: width)
                    .clipShape(Circle())
                
                ZStack {
                    Circle()
                        .stroke(Color.black.opacity(0.06), lineWidth: 4)
                        .frame(width: width + 45, height: width + 45)
                }
            }
        }
        .onAppear(perform: homeData.fetchAlbum)
    }
}
