//
//  EpisodesView.swift
//  NetflixClone-(MVVM)-SwiftUI
//
//  Created by Mehdi MMS on 08/03/2022.
//

import SwiftUI

struct EpisodesView: View {
    var episodes: [Episode]
    
    @Binding var showSeasonPicker: Bool
    @Binding var selectedSeason: Int
    
    func getEpisodes(forSeason season: Int) -> [Episode] {
        return episodes.filter({ $0.season == season })
    }
    
    var body: some View {
        VStack {
            // Season Picker
            HStack {
                Button(action: {
                    showSeasonPicker = true
                }, label: {
                    Group {
                        Text("Season 1")
                        Image(systemName: "chevron.down")
                    }
                    .font(.system(size: 16))
                   
                })

                Spacer()
            }
            // Episodes List
            
            ForEach(getEpisodes(forSeason: selectedSeason)) { episode in
                VStack(alignment: .leading) {
                    // HStack Preview Image
                    HStack {
                        VideoPreviewImage(imageURL: episode.thumbnailURL, vieoURL: episode.videoURL)
                            .frame(width: 120, height: 70)
                        VStack {
                            Text("\(episode.episodeNumber). \(episode.name)")
                                .font(.system(size: 16))
                            Text("\(episode.length)m")
                                .font(.system(size: 12))
                                .foregroundColor(.gray)
                        }
                        Text("dl btn")
                    }
                    
                    // Description
                    Text(episode.description)
                        .font(.system(size: 13))
                        .lineLimit(3)
                }
            }
            
            Spacer()
        }
        .foregroundColor(.white)
    }
}

struct EpisodesView_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Color.black
                .edgesIgnoringSafeArea(.all)
            EpisodesView(episodes: allExampleEpisodes, showSeasonPicker: .constant(false), selectedSeason: .constant(1))
        }
    }
}