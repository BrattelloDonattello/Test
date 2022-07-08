//
//  PlayerView.swift
//  SpotifyClone
//
//  Created by Cristian Ciupac on 14.02.2022.
//

import SwiftUI

struct PlayerView: View {
    var body: some View {
        ZStack {
            LinearGradient(colors: [Color(hex: "6537AB"), Color(hex: "4E67E1")], startPoint: .leading, endPoint: .trailing)
                .ignoresSafeArea()
            VStack {
                Navigation()
                
                Main()
                    .padding(.bottom)
                
                HStack {
                    Image(systemName: "heart")
                        .foregroundColor(.white)
                        .font(.system(size: 30))
                        .padding(.trailing)
                    Image(systemName: "list.star")
                        .foregroundColor(.white)
                        .font(.system(size: 30))
                        .padding(.trailing)
                    Image(systemName: "plus.circle")
                        .foregroundColor(.white)
                        .font(.system(size: 30))
                        .padding(.trailing)
                    Image(systemName: "paperplane")
                        .foregroundColor(.white)
                        .font(.system(size: 30))
                }
                .padding(.vertical)
                Spacer()
            }
            .padding(.horizontal)
        }
    }
}

struct PlayerView_Previews: PreviewProvider {
    static var previews: some View {
        PlayerView()
    }
}

struct Navigation: View {
    var body: some View {
        HStack {
            Button(action: {}) {
                Image(systemName: "chevron.backward.circle")
                    .foregroundColor(.white)
                    .font(.system(size: 30, weight: .semibold))
            }
            Spacer()
            Text("Player")
                .foregroundColor(Color.white)
                .font(.title)
                .fontWeight(.medium)
            Spacer()
            Button(action: {}) {
                Image(systemName: "ellipsis")
                    .foregroundColor(.white)
                    .font(.system(size: 30, weight: .semibold))
                    .rotationEffect(.degrees(90))
            }
        }
    }
}

struct Main: View {
    var body: some View {
        VStack {
            Image("PlayedNOW")
            
            Text("Chapter 1 : Part 2")
                .foregroundColor(.white)
                .opacity(0.6)
                .font(.system(size: 14, weight: .semibold))
            Text("Manusia Setengah Dewa")
                .foregroundColor(.white)
                .font(.system(size: 24, weight: .bold))
                .padding(.bottom)
            HStack {
                Image(systemName: "person.circle.fill")
                    .foregroundColor(.white)
                    .font(.system(size: 15))
                Text("Iwan Fals")
                    .foregroundColor(.white)
                    .font(.system(size: 14, weight: .semibold))
            }
        }
    }
}
