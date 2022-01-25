//
//  ChampsViewModel.swift
//  League Champs
//
//  Created by Guilherme - ília on 24/01/22.
//

import Foundation
import SwiftUI

class ChampsViewModel: ObservableObject {
    @Published var champs: Champ?
    
    init() {
        retrieveData()
    }
    
    func retrieveData() {
        if let url = URL(string: "https://ddragon.leagueoflegends.com/cdn/12.2.1/data/pt_BR/champion.json") {
            URLSession.shared.dataTask(with: url) { data, response, error in
                if let data = data {
                    let jsonDecoder = JSONDecoder()
                    do {
                        let parsedJson = try jsonDecoder.decode(Champ.self, from: data)
                        DispatchQueue.main.async {
                            self.champs = parsedJson
                        }
                    } catch {
                        
                    }
                }
            }.resume()
        }
    }
    
    func getChampNames() -> [String] {
        guard let names = champs?.data.keys else {return []}
        return Array(names).sorted()
    }
}
