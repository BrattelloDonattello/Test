//
//  ContentView.swift
//  SpotifyClone
//
//  Created by Cristian Ciupac on 10.02.2022.
//

import SwiftUI

struct ContentView: View {
    
    
    var body: some View {
        
        ZStack {
            Color.black.ignoresSafeArea()
            
            VStack {
                
                NavigationBar()
                    .padding(.bottom, 10)
                
                CardOffer()
                    .padding(.bottom, 10)
                
                recentlyPlayed()
                    .padding(.bottom, 10)
                
                trySomethingElse()
                
                Spacer()
            }
            .padding(.horizontal)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct NavigationBar: View {
    var body: some View {
        HStack {
            Text("Good Evening")
                .font(.title)
                .fontWeight(.bold)
                .foregroundColor(Color.white)
            Spacer()
            HStack {
                Image(systemName: "bell.and.waveform.fill")
                    .resizable()
                    .frame(width: 30, height: 30)
                    .foregroundColor(Color.white)
                    .padding(.trailing)
                Image(systemName: "gear")
                    .resizable()
                    .frame(width: 30, height: 30)
                    .foregroundColor(Color.white)
            }
        }
    }
}

struct card2: View {
    var image = "jennifierLopez"
    var title = "Jennifer \nLopez"
    
    var body: some View {
        HStack {
            Image(image)
                .resizable()
                .frame(width: 55, height: 73)
            Text(title)
                .foregroundColor(Color.white)
                .font(.system(size: 12, weight: .bold))
                .lineLimit(2)
                .lineSpacing(5)
            Spacer()
        }
        .background(Color(hex: "#252424"))
        .cornerRadius(20)
    }
}

struct card1: View {
    var image = "NoTimeToDie"
    var title = "Like Songs"
    
    var body: some View {
            HStack {
            
                Button(action: {}) {
                        Image(image)
                            .resizable()
                            .frame(width: 55, height: 73)
                        Text(title)
                            .foregroundColor(Color.white)
                            .font(.system(size: 12, weight: .bold))
                            .lineLimit(2)
                            .lineSpacing(5)
                        Spacer()
                }
            }
            .background(Color(hex: "#252424"))
            .cornerRadius(20)
        
    }
}
struct card3: View {
    var image = "galway"
    var title = "Galway Girl"
    
    var body: some View {
        HStack {
            Image(image)
                .resizable()
                .frame(width: 55, height: 73)
            Text(title)
                .foregroundColor(Color.white)
                .font(.system(size: 12, weight: .bold))
                .lineLimit(2)
                .lineSpacing(5)
            Spacer()
        }
        .background(Color(hex: "#252424"))
        .cornerRadius(20)
    }
}

struct card4: View {
    var image = "edSheeran"
    var title = "Ed Sheeran \nMix"
    
    var body: some View {
        HStack() {
            Image(image)
                .resizable()
                .frame(width: 55, height: 73)
            Text(title)
                .foregroundColor(Color.white)
                .font(.system(size: 12, weight: .bold))
                .lineLimit(2)
                .lineSpacing(5)
            Spacer()
        }
        .background(Color(hex: "#252424"))
        .cornerRadius(20)
    }
}
struct card5: View {
    var image = "noLie"
    var title = "No Lie"
    
    var body: some View {
        HStack {
            Image(image)
                .resizable()
                .frame(width: 55, height: 73)
            Text(title)
                .foregroundColor(Color.white)
                .font(.system(size: 12, weight: .bold))
                .lineLimit(2)
                .lineSpacing(5)
            Spacer()
        }
        .background(Color(hex: "#252424"))
        .cornerRadius(20)
    }
}

struct card6: View {
    var image = "billieEilish"
    var title = "Bad Guy"
    var subTitle = "Billie eilish"
    
    var body: some View {
        HStack() {
            Image(image)
                .resizable()
                .frame(width: 55, height: 73)
            VStack(alignment: .leading) {
                Text(title)
                    .foregroundColor(Color.white)
                    .font(.system(size: 12, weight: .bold))
                Text(subTitle)
                    .foregroundColor(Color(hex: "#D1CBCB"))
                    .font(.system(size: 12, weight: .bold))
                
            }
            Spacer()
        }
        .background(Color(hex: "#252424"))
        .cornerRadius(20)
    }
}

struct CardOffer: View {
    var body: some View {
        VStack {
            HStack {
                card1()
                    .frame(maxWidth: 160)
                Spacer()
                card2()
                    .frame(maxWidth: 160)
            }
            .padding(.bottom)
            HStack {
                card3()
                    .frame(maxWidth: 160)
                Spacer()
                card4()
                    .frame(maxWidth: 160)
            }
            .padding(.bottom)
            HStack {
                card5()
                    .frame(maxWidth: 160)
                Spacer()
                card6()
                    .frame(maxWidth: 160)
            }
        }
    }
}


struct recentlyPlayed: View {
    var body: some View {
        VStack(alignment: .leading) {
            Text("Recently Played")
                .foregroundColor(Color.white)
                .font(.system(size: 24, weight: .bold))
                .padding(.leading, 4)
            HStack {
                VStack {
                    Image("selenaGomez")
                        .resizable()
                        .frame(width: 100, height: 100)
                        .padding(.bottom, 5)
                    Text("Selena Gomex mix")
                        .foregroundColor(Color.white)
                        .font(.system(size: 12, weight: .bold))
                }
                Spacer()
                VStack {
                    Image("taylorSwift")
                        .resizable()
                        .frame(width: 100, height: 100)
                        .padding(.bottom, 5)
                    Text("Taylor Shift mix")
                        .foregroundColor(Color.white)
                        .font(.system(size: 12, weight: .bold))
                }
                Spacer()
                VStack {
                    Image("edSheeranFace")
                        .resizable()
                        .frame(width: 100, height: 100)
                        .padding(.bottom, 5)
                    Text("Ed sheeran mix")
                        .foregroundColor(Color.white)
                        .font(.system(size: 12, weight: .bold))
                }
            }
        }
    }
}

struct trySomethingElse: View {
    var body: some View {
        VStack(alignment: .leading) {
            Text("Try something else")
                .foregroundColor(Color.white)
                .font(.system(size: 24, weight: .bold))
                .padding(.leading, 4)
            HStack {
                VStack {
                    Image("bts")
                        .resizable()
                        .frame(width: 100, height: 100)
                        .padding(.bottom, 5)
                    Text("Agust D, Steve Aoki,\nBTS, Lil Nas X, Coldplay")
                        .foregroundColor(Color.white)
                        .font(.system(size: 9, weight: .bold))
                        .lineLimit(3)
                }
                Spacer()
                VStack {
                    Image("top50")
                        .resizable()
                        .frame(width: 100, height: 100)
                        .padding(.bottom, 5)
                    Text("Your daily updates of the\nmost played tracks rig...")
                        .foregroundColor(Color.white)
                        .font(.system(size: 9, weight: .bold))
                        .lineLimit(3)
                }
                Spacer()
                VStack {
                    Image("justice")
                        .resizable()
                        .frame(width: 100, height: 100)
                        .padding(.bottom, 5)
                    Text("Ed sheeran, The Kid\nLAROI, David Guetta,...")
                        .foregroundColor(Color.white)
                        .font(.system(size: 9, weight: .bold))
                        .lineLimit(3)
                }
            }
        }
    }
}
