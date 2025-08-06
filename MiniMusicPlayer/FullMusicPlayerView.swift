//
//  FullMusicPlayerView.swift
//  MiniMusicPlayer
//
//  Created by Ammad on 05/08/2025.
//

import SwiftUI

struct FullMusicPlayerView: View {
    private let album: Album
    @State private var isPlaying = false
    @State private var isFavourited = false
    @State private var progress: Double = 0.75

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
                .frame(width: 354, height: 354)
                .clipShape(.rect(cornerRadius: 12))

            VStack(spacing: 34) {
                Text(album.tracks[1].title)
                    .font(.system(size: 24))
                    .bold()

                Text(album.artist)
                    .font(.system(size: 16, weight: .medium))
            }

            HStack {
                Button("Favourite", systemImage: isFavourited ? "heart.fill" : "heart") {
                    isFavourited.toggle()
                }
                .contentTransition(.symbolEffect(.replace))
                .font(.system(size: 24))
                .labelStyle(.iconOnly)

                Spacer()
                
                Button("Skip", systemImage: "square.and.arrow.up", action: {})
                    .font(.system(size: 24))
                    .labelStyle(.iconOnly)
            }

            Slider(value: $progress) {
                Text("Label")
            } minimumValueLabel: {
                Text("Min")
                    .font(.system(size: 10, weight: .medium))
            } maximumValueLabel: {
                Text("4:21")
                    .font(.system(size: 10, weight: .medium))
            }

            HStack {
                Button("Shuffle", systemImage: "shuffle", action: {})
                    .labelStyle(.iconOnly)
                    .font(.system(size: 30))

                Spacer()

                Button("Back", systemImage: "backward.end", action: {})
                    .labelStyle(.iconOnly)
                    .font(.system(size: 30))

                Spacer()

                Button {
                    isPlaying.toggle()
                } label: {
                    Image(systemName: isPlaying ? "pause.fill" : "play.fill")
                        .font(.system(size: 37))
                        .padding()
                        .contentTransition(.symbolEffect(.replace))
                }
                .buttonBorderShape(.circle)
                .buttonStyle(.borderedProminent)
                .tint(.secondary)
                .frame(width: 75, height: 75)

                Spacer()

                Button("Next", systemImage: "forward.end", action: {})
                    .labelStyle(.iconOnly)
                    .font(.system(size: 30))

                Spacer()

                Button("Repeat", systemImage: "repeat", action: {})
                    .labelStyle(.iconOnly)
                    .font(.system(size: 30))
            }
        }
        .padding()
    }
    
}

#Preview {
    FullMusicPlayerView(album: .speakNow)
}
