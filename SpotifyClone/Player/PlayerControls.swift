//
//  PlayerControls.swift
//  SpotifyClone
//
//  Created by Cristian Ciupac on 11.02.2022.
//

import SwiftUI

struct PlayerControls: View {
    @State var height: CGFloat = 100
    var body: some View {
        VStack {
            RoundedRectangle(cornerRadius: 5)
                .fill(Color(hex: "#00E7E2").opacity(0.3))
                .frame(width: 80, height: 5, alignment: .center)
            
            
            HStack(spacing: 15) {
                Image("A$apRockyMan")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 55, height: 55, alignment: .center)
                    .cornerRadius(15)
                
                
                VStack(alignment: .leading, spacing: 0) {
                    Text("A$apRocky")
                        .foregroundColor(Color.black.opacity(0.7))
                        .font(.title3)
                        .padding(.bottom)
                    Text("This isn`t a scoll text in swift")
                        .foregroundColor(Color.white)
                        .font(.subheadline)
                }
                
                Button(action: {}) {
                    Image(systemName: "play.circle.fill")
                        .foregroundColor(Color(hex: "#7D4982"))
                        .font(.system(size: 40))
                }
            }
            Spacer()
        }
        .padding(.horizontal)
        .padding(.vertical, 20)
        .frame(height: height)
        .background(Color(hex: "$FF62AD").opacity(0.9))
        .cornerRadius(20)
    }
}

struct PlayerControls_Previews: PreviewProvider {
    static var previews: some View {
        PlayerControls()
    }
}
