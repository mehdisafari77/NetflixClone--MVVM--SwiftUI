//
//  PreviewVM.swift
//  NetflixClone-(MVVM)-SwiftUI
//
//  Created by Mehdi MMS on 11/03/2022.
//

import Foundation

class PreviewVM: ObservableObject {
    
    var movie: Movie
    
    init(movie: Movie) {
        self.movie = movie
    }
    
}
