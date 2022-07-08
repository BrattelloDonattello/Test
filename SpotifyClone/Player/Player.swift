//
//  Player.swift
//  SpotifyClone
//
//  Created by Cristian Ciupac on 11.02.2022.
//

import SwiftUI

struct Player: View {

    var body: some View {
        ZStack (alignment: Alignment(horizontal: .center, vertical: .bottom)){
            VStack {
                ScrollView(.vertical, showsIndicators: false) {
                    VStack (alignment: .leading) {
                        HStack (spacing: 0) {
                            LinearGradient(gradient: Gradient(colors: [.white, .white, Color(hex: "#605B56")]), startPoint: .topLeading, endPoint: .bottomLeading)
                                .mask(
                                    Text("Liked Songs")
                                        .font(.system(size: 44, weight: .bold))
                                        .foregroundColor(Color.white)
                                        .lineLimit(2)
                                )
                            Spacer()
                            
                            ZStack {
                                RoundedRectangle(cornerRadius: 20)
                                    .fill(LinearGradient(gradient: Gradient(colors: [Color(hex: "#605B56"), Color(hex: "#605B56")]), startPoint: .bottom, endPoint: .top))
                                    .frame(width: 200, height: 200, alignment: .center)
                                    .shadow(color: Color(hex: "#44555D").opacity(0.5), radius: 15, x: -20, y: 20)
                                    .overlay(
                                        VStack(alignment: .trailing) {
                                            Spacer()
                                            
                                            HStack(alignment: .bottom) {
                                                Spacer()
                                                
                                                Image(systemName: "play.circle.fill")
                                                    .font(.system(size: 40))
                                                    .foregroundColor(.white)
                                            }
                                        }
                                            .frame(width: 200, height: 200, alignment: .center)
                                    )
                                Image("playerIcon")
                                    .resizable()
                                    .frame(width: 170, height: 170, alignment: .top)
                                    .offset(y: -60)
                                    .rotation3DEffect(.degrees(10), axis: (x: 10, y: -20, z: 20))
                                    .shadow(color: Color(hex: "#646464").opacity(0.2), radius: 5, x: 0, y: 10)
                            }
                            .frame(width: 200, height: 200, alignment: .center)
                        }
                        .padding(.top, 50)
                        
                        ForEach(songs) { item in
                            SongCard(item: item)
                        }
                    }
                    .padding(.bottom, 120)
                }
            }
            .padding(.horizontal)
            PlayerControls()
//                .padding(.horizontal)
            
        }
        .background(Color(hex: "#101113"))
        .edgesIgnoringSafeArea(.all)
    }
}

struct Player_Previews: PreviewProvider {
    static var previews: some View {
        Player()
    }
}

struct SongCard: View {
    var item: Songs
    
    var body: some View {
        HStack (spacing: 20) {
            Image(item.image)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 100, height: 100, alignment: .center)
                .cornerRadius(15)
            
            VStack (alignment: .leading, spacing:  10) {
                Text("\(item.name)")
                    .font(.title2)
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                
                HStack {
                    Text("\(item.artist)")
                        .foregroundColor(.white)
                    
                    Spacer()
                    
                    Text(item.time)
                        .foregroundColor(.white)
                }
            }
        }
    }
}
