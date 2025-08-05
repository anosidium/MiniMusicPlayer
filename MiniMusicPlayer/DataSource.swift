//
//  DataSource.swift
//  MiniMusicPlayer
//
//  Created by Ammad on 05/08/2025.
//

import Foundation

enum Genre {
    case alternative
    case country
    case pop
    case rock
    case jazz
}

struct Album {
    let name: String
    let artist: String
    let year: Int
    let genre: Genre
    let tracks: [Track]
}

struct Track {
    let title: String
    let duration: Int
    let artist: String
    let album: String
    let number: Int
    let discNumber: Int
    var isFavourited: Bool
}
