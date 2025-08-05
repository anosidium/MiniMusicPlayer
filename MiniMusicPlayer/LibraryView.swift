//
//  LibraryView.swift
//  MiniMusicPlayer
//
//  Created by Ammad on 05/08/2025.
//

import SwiftUI

struct LibraryView: View {
    @Namespace private var namespace

    var body: some View {
        NavigationStack {
            Spacer()

            NavigationLink {
                ContentView(album: .speakNow)
                    .navigationTransition(.zoom(sourceID: "zoom", in: namespace))
                    .navigationBarBackButtonHidden()
            } label: {
                MiniPlayerView(album: .speakNow)
                    .matchedGeometryEffect(id: "zoom", in: namespace)
            }
        }
    }
    
}

#Preview {
    LibraryView()
}
