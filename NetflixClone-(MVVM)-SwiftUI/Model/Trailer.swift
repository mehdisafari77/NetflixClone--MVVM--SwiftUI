//
//  Trailer.swift
//  NetflixClone-(MVVM)-SwiftUI
//
//  Created by Mehdi MMS on 07/03/2022.
//

import Foundation

struct Trailer: Identifiable, Hashable {
    var id: String = UUID().uuidString
    var name: String
    var videoURL: URL
    var thumbnailImageURL: URL
}
