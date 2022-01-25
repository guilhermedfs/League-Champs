//
//  ContentView.swift
//  League Champs
//
//  Created by Guilherme - ília on 24/01/22.
//

import SwiftUI

struct ContentView: View {
    @StateObject var viewModel = ChampsViewModel()
    
    var columns: [GridItem] = [
        GridItem(.adaptive(minimum: 120)),
        GridItem(.adaptive(minimum: 120)),
    ]
    
    var body: some View {
        NavigationView {
            ScrollView {
                LazyVGrid(columns: columns, spacing: 16) {
                    ForEach(viewModel.getChampNames(), id: \.self) { champs in
                        NavigationLink(destination: ChampDetails(data: viewModel.champs?.data[champs])) {
                            CardView(champName: champs)
                        }
                    }
                }
            }
            .background(.background)
            .navigationTitle("Champs")
        }
}
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
