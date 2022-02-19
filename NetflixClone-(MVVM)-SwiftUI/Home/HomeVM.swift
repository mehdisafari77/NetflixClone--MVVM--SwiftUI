//
//  HomeVM.swift
//  NetflixClone-(MVVM)-SwiftUI
//
//  Created by Mehdi MMS on 18/02/2022.
//

import Foundation

class HomeVM: ObservableObject {
    
    // String == Category
    @Published var movies: [String: [Movie]] = [:]
}
