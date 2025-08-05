//
//  DataSource.swift
//  MiniMusicPlayer
//
//  Created by Ammad on 05/08/2025.
//

import Foundation

// MARK: - Genre

enum Genre {
    case alternative
    case country
    case pop
    case rock
    case jazz
}

// MARK: - Track

struct Track {
    let title: String
    let duration: Int
    let artist: String
    let album: String
    let number: Int
    var isFavourited: Bool
}

// MARK: - Album

struct Album {
    let name: String
    let artist: String
    let year: Int
    let genre: Genre
    let tracks: [Track]
}

extension Album {

    static let speakNow: Album = {
        let tracks = [
            Track(title: "Mine (POP Mix)", duration: 99, artist: "Taylor Swift", album: "Speak Now", number: 1, isFavourited: false),
            Track(title: "Sparks Fly", duration: 99, artist: "Taylor Swift", album: "Speak Now", number: 2, isFavourited: false),
            Track(title: "Back To December", duration: 99, artist: "Taylor Swift", album: "Speak Now", number: 3, isFavourited: false),
        ]

        let album = Album(
            name: "Speak Now",
            artist: "Taylor Swift",
            year: 2010,
            genre: .pop,
            tracks: tracks
        )

        return album
    }()

}
