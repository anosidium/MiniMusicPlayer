//
//  MiniPlayerView.swift
//  MiniMusicPlayer
//
//  Created by Ammad on 05/08/2025.
//

import SwiftUI

struct MiniPlayerView: View {
    private let album: Album

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

                VStack {
                    Text("Title")
                        .font(.caption)

                    Text(album.name)
                        .font(.caption2)
                }

                Spacer()

                Button("Play", systemImage: "play", action: {})
                    .labelStyle(.iconOnly)
                    .frame(width: 40, height: 40)
            }

            Slider(value: .constant(0.5))
                .controlSize(.mini)
        }
        .padding()
    }

}

#Preview {
    MiniPlayerView(album: .speakNow)
}
