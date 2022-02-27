//
//  Episode.swift
//  NetflixClone-(MVVM)-SwiftUI
//
//  Created by Mehdi MMS on 26/02/2022.
//

import Foundation

struct Episode: Identifiable {
    var id = UUID().uuidString
    
    var name: String
    var season: Int
    var thumbnailImageURLString: String
    var description: String
    var length: Int
    
    var thumbnailURL: URL {
        return URL(string: thumbnailImageURLString)!
    }
}
