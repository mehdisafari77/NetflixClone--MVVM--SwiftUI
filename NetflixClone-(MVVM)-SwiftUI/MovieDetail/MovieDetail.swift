//
//  MovieDetail.swift
//  NetflixClone-(MVVM)-SwiftUI
//
//  Created by Mehdi MMS on 26/02/2022.
//

import SwiftUI

struct MovieDetail: View {
    
    var movie: Movie
    
    let screen = UIScreen.main.bounds
    
    @State private var showSeasonPicker = false
    @State private var selectedSeason = 1
    
    @Binding var movieDetailToShow: Movie?
    
    var body: some View {
        ZStack {
            Color.black
                .edgesIgnoringSafeArea(.all)
            
            ZStack {
                VStack {
                    HStack {
                        Spacer()
                        
                        Button(action: {
                            movieDetailToShow = nil
                        }, label: {
                            Image(systemName: "xmark.circle")
                                .font(.system(size: 28))
                            
                        })
                    }.padding(.horizontal, 22)
                    
                    ScrollView(.vertical, showsIndicators: false) {
                        VStack {
                            
                            StandardHomeMovieInfo(movie: movie)
                            
                            MovieInfoSubheadline(movie: movie)
                            
                            if movie.promotionHeadline != nil {
                                Text(movie.promotionHeadline!)
                                    .bold()
                                    .font(.headline)
                            }
                            
                            PlayButton(text: "Play", imageName: "play.fill", backgroundColor: .red) {
                                //
                            }
                            
                            CurrentEpisodeInformation(movie: movie)
                            
                            CastInfo(movie: movie)
                            
                            HStack(spacing: 60) {
                                SmallVerticalButton(text: "My List", isOnImage: "checkmark", isOffImage: "plus", isOn: true) {
                                    //
                                }
                                
                                SmallVerticalButton(text: "Rate", isOnImage: "hand.thumbsup.fill", isOffImage: "hand.thumbsup", isOn: true) {
                                    //
                                }
                                
                                SmallVerticalButton(text: "Share", isOnImage: "paperplane", isOffImage: "paperplane", isOn: true) {
                                    //
                                }
                                
                                Spacer()
                            }
                            .padding(.leading, 20)
                            .padding(.vertical, 5)
                            
                            CustomTabSwitcher(tabs: [.episodes, .trailers, .more], movie: movie, showSeasonPicker: $showSeasonPicker, selectedSeason: $selectedSeason)
                            
                        }
                        .padding(.horizontal, 10)
                    }

                    Spacer()
                }
                .foregroundColor(.white)
                
                if showSeasonPicker {
                    Group {
                        Color.black.opacity(0.9)
                        
                        VStack(spacing: 40) {
                            Spacer()
                            
                            ForEach(0..<(movie.numberOfSeasons ?? 0)) { season in
                                Button {
                                    self.selectedSeason = season + 1
                                    self.showSeasonPicker = false
                                } label: {
                                    Text("Season \(season)")
                                        .foregroundColor(selectedSeason == season + 1 ? .white : .gray)
                                        .bold()
                                        .font(selectedSeason == season + 1 ? .title : .title2)
                                }

                            }
                            
                            Spacer()
                            
                            Button {
                                self.showSeasonPicker = false
                            } label: {
                                Image(systemName: "x.circle.fill")
                                    .foregroundColor(.white)
                                    .font(.system(size: 40))
                                    .scaleEffect(x: 1.1)
                            }
                            .padding(.bottom, 30)
                        }
                    }
                    .edgesIgnoringSafeArea(.all)
                }
            }
        }
    }
}

struct MovieDetail_Previews: PreviewProvider {
    static var previews: some View {
        MovieDetail(movie: exampleMovie2, movieDetailToShow: .constant(nil))
    }
}

struct MovieInfoSubheadline: View {
    var movie: Movie
    
    var body: some View {
        HStack(spacing: 20) {
            Image(systemName: "hand.thumbsup.fill")
                .foregroundColor(.white)
            
            Text(String(movie.year))
            
            RatingView(rating: movie.rating)
            

            Text(movie.numberOfSeasonsDisplay)
            
            HDView()
                        
        }
        .foregroundColor(.gray)
        .padding(.vertical, 6)
    }
}

struct RatingView: View {
    var rating: String
    
    var body: some View {
        ZStack {
            Rectangle()
                .foregroundColor(.gray)
            
            Text(rating)
                .foregroundColor(.white)
                .font(.system(size: 12))
                .bold()
        }
        .frame(width: 50, height: 20)
    }
}

struct HDView: View {
    var body: some View {
        ZStack {
            Rectangle()
                .foregroundColor(.black)
                .frame(width: 30)
                .border(Color.gray, width: 2)

                
            Text("HD")
                .foregroundColor(.white)
                .font(.system(size: 13))
                .bold()
        }
        .frame(width: 40, height: 20)
    }
}

struct CastInfo: View {
    
    var movie: Movie
    
    var body: some View {
        VStack(spacing: 3) {
            HStack {
                Text("Cast: \(movie.cast)")
                
                Spacer()
            }
            
            HStack {
                Text("Creators: \(movie.creators)")
                
                Spacer()
            }
        }
        .font(.caption)
        .foregroundColor(.gray)
        .padding(.vertical, 7)
    }
}

struct CurrentEpisodeInformation: View {
    var movie: Movie
    var body: some View {
        Group {
            HStack {
                Text(movie.episodeInfoDisplay)
                    .bold()
                
                Spacer()
            }
            .padding(.vertical, 4)
            
            HStack {
                Text(movie.episodeDescriptionDisplay)
                    .font(.subheadline)
                
                Spacer()
            }
        }
    }
}

struct StandardHomeMovieInfo: View {
    let screen = UIScreen.main.bounds
    var movie: Movie
    var body: some View {
        ZStack(alignment: .leading) {
            Image("netflix_logo")
                .resizable()
                .scaledToFit()
                .frame(width: 30)
                .padding(.top, -113)
            
            StandardHomeMovie(movie: movie)
                .frame(width: screen.width / 2.5)
                .zIndex(-1)
        }
    }
}
