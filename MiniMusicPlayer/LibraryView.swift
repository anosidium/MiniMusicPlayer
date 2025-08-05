//
//  LibraryView.swift
//  MiniMusicPlayer
//
//  Created by Ammad on 05/08/2025.
//

import SwiftUI

struct LibraryView: View {

    var body: some View {
        ZStack(alignment: .bottom) {
            Color.clear

            MiniPlayerView(album: .speakNow)
        }
    }
    
}

#Preview {
    LibraryView()
}
