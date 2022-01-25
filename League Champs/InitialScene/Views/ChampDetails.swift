//
//  ChampDetails.swift
//  League Champs
//
//  Created by Guilherme - ília on 24/01/22.
//

import SwiftUI

struct ChampDetails: View {
    let data: Details?
    
    var body: some View {
        ScrollView {
            VStack(alignment: .center, spacing: 20) {
                VStack {
                    Text(data?.name ?? "")
                        .font(.title.bold())
                    Text(data?.title ?? "")
                        .font(.title2)
                }
                
                VStack(alignment: .leading) {
                    Text(data?.blurb ?? "")
                        .font(.body)
                }
            }
        }
    }
}

//struct ChampDetails_Previews: PreviewProvider {
//    static var previews: some View {
//        ChampDetails(data: Details)
//    }
//}
