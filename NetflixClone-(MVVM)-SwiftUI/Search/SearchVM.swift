//
//  SearchVM.swift
//  NetflixClone-(MVVM)-SwiftUI
//
//  Created by Mehdi MMS on 10/03/2022.
//

import Foundation
import SwiftUI

class SearchVM: ObservableObject {
    
    @Published var isLoading: Bool = false
    
    @Published var viewState: ViewState = ViewState.ready
    
    @Published var popularMovies: [Movie] = []
    @Published var seachResults: [Movie] = []
    
    @Published var isShowingPopularMovies = true
    
    init() {
        getPopularMovies()
    }
    
    public func updateSearchText(with text: String) {
        setViewState(to: .loading)
        
        getSearchResults(forText: text)
    }
    
    private func getPopularMovies() {
        
    }
    
    private func getSearchResults(forText text: String) {
        
    }
    
    private func setViewState(to state: ViewState) {
        DispatchQueue.main.async {
            self.viewState = state
            self.isLoading = state == .loading
            
        }
    }
    
}

enum ViewState {
    case empty
    case loading
    case ready
    case error
}
