//
//  ContentView.swift
//  MiniMusicPlayer
//
//  Created by Ammad on 05/08/2025.
//

import SwiftUI

struct ContentView: View {
    private let album: Album

    init(album: Album = .speakNow) {
        self.album = album
    }

    var body: some View {
        VStack {
            HStack {
                Button("Close", systemImage: "chevron.up", action: {})
                    .labelStyle(.iconOnly)

                Spacer()

                Text("Now Playing")
                    .bold()

                Spacer()

                Button("Close", systemImage: "ellipsis.circle", action: {})
                    .labelStyle(.iconOnly)
            }

            Image(.speakNowAlbum)
                .resizable()
                .scaledToFit()

            Text(album.name)
                .font(.title)
                .bold()

            Text(album.artist)

            HStack {
                Button("Favourite", systemImage: "heart", action: {})
                    .symbolVariant(.fill)
                    .labelStyle(.iconOnly)
                
                Spacer()
                
                Button("Skip", systemImage: "square.and.arrow.up", action: {})
                    .labelStyle(.iconOnly)
            }

            Slider(value: .constant(0.75)) {
                Text("Label")
            } minimumValueLabel: {
                Text("Min")
            } maximumValueLabel: {
                Text("Max")
            }

            HStack {
                Button("Shuffle", systemImage: "shuffle", action: {})
                    .labelStyle(.iconOnly)

                Spacer()

                Button("Back", systemImage: "backward.end", action: {})
                    .labelStyle(.iconOnly)

                Spacer()

                Button("Play", systemImage: "play.fill", action: {})
                    .labelStyle(.iconOnly)
                    .font(.largeTitle)

                Spacer()

                Button("Next", systemImage: "forward.end", action: {})
                    .labelStyle(.iconOnly)

                Spacer()

                Button("Repeat", systemImage: "repeat", action: {})
                    .labelStyle(.iconOnly)
            }
        }
        .padding()
    }
    
}

#Preview {
    ContentView(album: .speakNow)
}
