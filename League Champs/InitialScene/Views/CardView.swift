//
//  CardView.swift
//  League Champs
//
//  Created by Guilherme - ília on 24/01/22.
//

import SwiftUI

struct CardView: View {
    let champName: String
    
    var body: some View {
        VStack {
            AsyncImage(url: URL(string: "https://ddragon.leagueoflegends.com/cdn/12.2.1/img/champion/\(champName).png")){ image in
                image.resizable()
                    .aspectRatio(contentMode: .fit)
                    .cornerRadius(6)
                    .frame(maxWidth: 150, maxHeight: 250)
            } placeholder: {
                ProgressView()
            }
            
            Text(champName)
                .font(.title3.bold())
                .lineLimit(1)
        }
        .onAppear {
            print("http://ddragon.leagueoflegends.com/cdn/12.2.1/img/champion/\(champName).png")
        }
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView(champName: "Aatrox")
    }
}
