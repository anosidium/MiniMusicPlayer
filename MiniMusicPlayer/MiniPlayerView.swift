//
//  MiniPlayerView.swift
//  MiniMusicPlayer
//
//  Created by Ammad on 05/08/2025.
//

import SwiftUI

struct MiniPlayerView: View {
    private let album: Album
    @State private var isPlaying = false

    init(album: Album) {
        self.album = album
    }

    var body: some View {
        VStack {
            HStack {
                Image(.speakNowAlbum)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 40, height: 40)
                    .clipShape(.rect(cornerRadius: 8))


                Spacer()

                VStack(spacing: 5) {
                    Text(album.tracks[1].title)
                        .font(.system(size: 12, weight: .medium))

                    Text(album.artist)
                        .font(.system(size: 10, weight: .regular))
                }

                Spacer()

                Button("Play", systemImage: isPlaying ? "pause" : "play") {
                    isPlaying.toggle()
                }
                .labelStyle(.iconOnly)
                .frame(width: 32, height: 32)
                .background(in: .circle.stroke(lineWidth: 1))
            }

            Slider(value: .constant(0.5))
                .controlSize(.mini)
        }
        .padding(.horizontal)
        .padding(.vertical, 8)
        .background(.thickMaterial, in: .rect(cornerRadius: 8))
    }

}

#Preview {
    MiniPlayerView(album: .speakNow)
}
