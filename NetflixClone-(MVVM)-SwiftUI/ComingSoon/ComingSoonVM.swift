//
//  ComingSoonVM.swift
//  NetflixClone-(MVVM)-SwiftUI
//
//  Created by Mehdi MMS on 10/03/2022.
//

import Foundation

class ComingSoonVM: ObservableObject {
    @Published var movies: [Movie] = []
    
    init() {
        self.movies = generateMovies(20)
    }
}
