//
//  Champ.swift
//  League Champs
//
//  Created by Guilherme - ília on 24/01/22.
//

import Foundation

struct Champ: Decodable {
    let type: String
    let format: String
    let version: String
    let data: [String: Details]
}

struct Details: Decodable {
    let version: String
    let id, key, name, title: String
    let blurb: String
    let info: Info
    let image: Image
    let tags: [Tag]
    let partype: String
    let stats: Stats
}

struct Stats: Decodable {
    let hp: Double
    let hpperlevel: Double
    let mp: Double
    let mpperlevel: Double
    let movespeed: Double
    let armor: Double
    let armorperlevel: Double
    let spellblock: Double
    let spellblockperlevel: Double
    let attackrange: Double
    let hpregen: Double
    let hpregenperlevel: Double
    let mpregen: Double
    let mpregenperlevel: Double
    let crit: Double
    let critperlevel: Double
    let attackdamage: Double
    let attackdamageperlevel: Double
    let attackspeedperlevel: Double
    let attackspeed: Double
}

enum Tag: String, Decodable {
    case assassin = "Assassin"
    case fighter = "Fighter"
    case mage = "Mage"
    case marksman = "Marksman"
    case support = "Support"
    case tank = "Tank"
}

struct Info: Decodable {
    let attack, defense, magic, difficulty: Int
}

struct Image: Decodable {
    let full: String
    let sprite: String
    let group: String
    let x: Int
    let y: Int
    let w: Int
}
