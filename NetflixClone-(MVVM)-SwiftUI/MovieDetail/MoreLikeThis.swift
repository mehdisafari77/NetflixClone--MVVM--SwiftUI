//
//  MoreLikeThis.swift
//  NetflixClone-(MVVM)-SwiftUI
//
//  Created by Mehdi MMS on 04/03/2022.
//

import SwiftUI

struct MoreLikeThis: View {

    var movies: [Movie]
    
    let columns = [
        GridItem(.flexible()),
        GridItem(.flexible()),
        GridItem(.flexible())
    ]
    
    var body: some View {
        let screen = UIScreen.main.bounds
        ScrollView {
            LazyVGrid(columns: columns) {
                ForEach(0..<movies.count) { index in
                    ZStack(alignment: .leading) {
                        Image("netflix_logo")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 30)
                            .padding(.top, -110)
                            .padding(.leading, 5)

                        
                        StandardHomeMovie(movie: movies[index])
                            .frame(width: screen.width / 2.5)
                            .zIndex(-1)
                    }
                }
            }
        }
    }
}

struct MoreLikeThis_Previews: PreviewProvider {
    static var previews: some View {
        MoreLikeThis(movies: exampleMovies)
    }
}
