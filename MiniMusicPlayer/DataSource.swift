//
//  DataSource.swift
//  MiniMusicPlayer
//
//  Created by Ammad on 05/08/2025.
//

import UIKit

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

// MARK: - UIImage

extension UIImage {

    var averageColor: UIColor? {
        guard let inputImage = CIImage(image: self) else { return nil }
        let extentVector = CIVector(x: inputImage.extent.origin.x, y: inputImage.extent.origin.y, z: inputImage.extent.size.width, w: inputImage.extent.size.height)

        guard let filter = CIFilter(name: "CIAreaAverage", parameters: [kCIInputImageKey: inputImage, kCIInputExtentKey: extentVector]) else { return nil }
        guard let outputImage = filter.outputImage else { return nil }

        var bitmap = [UInt8](repeating: 0, count: 4)
        let context = CIContext(options: [.workingColorSpace: kCFNull])
        context.render(outputImage, toBitmap: &bitmap, rowBytes: 4, bounds: CGRect(x: 0, y: 0, width: 1, height: 1), format: .RGBA8, colorSpace: nil)

        return UIColor(red: CGFloat(bitmap[0]) / 255, green: CGFloat(bitmap[1]) / 255, blue: CGFloat(bitmap[2]) / 255, alpha: CGFloat(bitmap[3]) / 255)
    }

}
