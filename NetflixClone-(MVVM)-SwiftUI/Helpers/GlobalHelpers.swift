//
//  GlobalHelpers.swift
//  NetflixClone-(MVVM)-SwiftUI
//
//  Created by Mehdi MMS on 18/02/2022.
//

import Foundation
import SwiftUI

let exampleVideoURL = URL(string: "https://www.radiantmediaplayer.com/media/big-buck-bunny-360p.mp4")!

let exampleImageURL = URL(string: "https://picsum.photos/300/104")!
let exampleImageURL2 = URL(string: "https://picsum.photos/300/105")!
let exampleImageURL3 = URL(string: "https://picsum.photos/300/105")!

var randomExampleImageURL: URL {
    return [exampleImageURL, exampleImageURL2, exampleImageURL3].randomElement() ?? exampleImageURL
}

let exampleTrailer1 = Trailer(name: "Season 3 Trailer", videoURL: exampleVideoURL, thumbnailImageURL: exampleImageURL)
let exampleTrailer2 = Trailer(name: "The Hero's Journey", videoURL: exampleVideoURL, thumbnailImageURL: exampleImageURL2)
let exampleTrailer3 = Trailer(name: "The Mysterious", videoURL: exampleVideoURL, thumbnailImageURL: exampleImageURL3)

let exampleTrailers = [exampleTrailer1, exampleTrailer2, exampleTrailer3]


let exampleMovie1 = Movie(
    id: UUID().uuidString,
    name: "Dark",
    thumbnailURL: URL(string:"https://picsum.photos/200/300")!,
    categories: ["Dystopian", "Exciting", "Suspenseful", "Sci-Fi TV"],
    year: 2020,
    rating: "TV-MA",
    numberOfSeasons: 1,
    defaultEpisodeInfo: exampleEpisodeInfo1,
    creators: "Baran Bo Odan, Jantje Friese",
    cast: "Louis Hoffman, Oliver Masucci, Jordis Triebel",
    moreLikeThisMovies: [exampleMovie2, exampleMovie3, exampleMovie4, exampleMovie5, exampleMovie6, exampleMovie7],
    trailers: exampleTrailers)

let exampleMovie2 = Movie(
    id: UUID().uuidString,
    name: "Travelers",
    thumbnailURL: URL(string:"https://picsum.photos/200/300/")!,
    categories: ["Dystopian", "Exciting", "Suspenseful", "Sci-Fi TV"],
    year: 2020,
    rating: "TV-MA",
    numberOfSeasons: 2,
    defaultEpisodeInfo: exampleEpisodeInfo1,
    creators: "Baran Bo Odan, Jantje Friese",
    cast: "Louis Hoffman, Oliver Masucci, Jordis Triebel",
    moreLikeThisMovies: exampleMovies,
    promotionHeadline: "Best Rated Show",
    trailers: exampleTrailers)

let exampleMovie3 = Movie(
    id: UUID().uuidString,
    name: "Alone",
    thumbnailURL: URL(string:"https://picsum.photos/200/301")!,
    categories: ["Dystopian", "Exciting", "Suspenseful", "Sci-Fi TV"],
    year: 2020,
    rating: "TV-MA",
    numberOfSeasons: 3,
    defaultEpisodeInfo: exampleEpisodeInfo1,
    creators: "Baran Bo Odan, Jantje Friese",
    cast: "Louis Hoffman, Oliver Masucci, Jordis Triebel",
    moreLikeThisMovies: exampleMovies,
    trailers: exampleTrailers)

let exampleMovie4 = Movie(
    id: UUID().uuidString,
    name: "Hannibal",
    thumbnailURL: URL(string:"https://picsum.photos/200/302")!,
    categories: ["Dystopian", "Exciting", "Suspenseful", "Sci-Fi TV"],
    year: 2020,
    rating: "TV-MA",
    numberOfSeasons: 1,
    defaultEpisodeInfo: exampleEpisodeInfo1,
    creators: "Baran Bo Odan, Jantje Friese",
    cast: "Louis Hoffman, Oliver Masucci, Jordis Triebel",
    moreLikeThisMovies: exampleMovies,
    promotionHeadline: "New Episodes Coming Soon",
    trailers: exampleTrailers)

let exampleMovie5 = Movie(
    id: UUID().uuidString,
    name: "Afterlife",
    thumbnailURL: URL(string:"https://picsum.photos/200/303")!,
    categories: ["Dystopian", "Exciting", "Suspenseful", "Sci-Fi TV"],
    year: 2020,
    rating: "TV-MA",
    numberOfSeasons: 2,
    defaultEpisodeInfo: exampleEpisodeInfo1,
    creators: "Baran Bo Odan, Jantje Friese",
    cast: "Louis Hoffman, Oliver Masucci, Jordis Triebel",
    moreLikeThisMovies: exampleMovies,
    trailers: exampleTrailers)

let exampleMovie6 = Movie(
    id: UUID().uuidString,
    name: "Community",
    thumbnailURL: URL(string:"https://picsum.photos/200/304")!,
    categories: ["Dystopian", "Exciting", "Suspenseful", "Sci-Fi TV"],
    year: 2020,
    rating: "TV-MA",
    numberOfSeasons: 4,
    defaultEpisodeInfo: exampleEpisodeInfo1,
    creators: "Baran Bo Odan, Jantje Friese",
    cast: "Louis Hoffman, Oliver Masucci, Jordis Triebel",
    moreLikeThisMovies: exampleMovies,
    promotionHeadline: "Watch Season 4 Now",
    trailers: exampleTrailers)

let exampleMovie7 = Movie(
    id: UUID().uuidString,
    name: "Community",
    thumbnailURL: URL(string:"https://picsum.photos/200/304")!,
    categories: ["Dystopian", "Exciting", "Suspenseful", "Sci-Fi TV"],
    year: 2020,
    rating: "TV-MA",
    numberOfSeasons: 4,
    defaultEpisodeInfo: exampleEpisodeInfo1,
    creators: "Baran Bo Odan, Jantje Friese",
    cast: "Louis Hoffman, Oliver Masucci, Jordis Triebel",
    moreLikeThisMovies: exampleMovies,
    promotionHeadline: "Watch Season 4 Now",
    trailers: exampleTrailers)


var exampleMovies: [Movie] {
    return [exampleMovie1, exampleMovie2, exampleMovie3, exampleMovie4, exampleMovie5, exampleMovie6, ].shuffled()
}

let exampleEpisodeInfo1 = CurrentEpisodeInfo(episodeName: "Beginnings and Endings", description: "Six months after the disappearances, the police from a task force. In 2052, Jonas learns that most of Winden perished in an apocalyptic event", season: 2, episode: 1)


extension LinearGradient {
    static let blackOpacityGradient = LinearGradient(
        gradient: Gradient(colors: [Color.black.opacity(0.0), Color.black.opacity(0.95)]),
        startPoint: .top,
        endPoint: .bottom
    )
}

extension String {
    func widthOfString(usingFont font: UIFont) -> CGFloat {
        let fontAttributes = [NSAttributedString.Key.font: font]
        let size = self.size(withAttributes: fontAttributes)
        return size.width
    }
}
