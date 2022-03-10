//
//  SearchBar.swift
//  NetflixClone-(MVVM)-SwiftUI
//
//  Created by Mehdi MMS on 10/03/2022.
//

import SwiftUI

struct SearchBar: View {
    
    @State private var text: String = ""
    
    var body: some View {
        HStack {
            Image(systemName: "magnifyingglass")
            
            TextField("Search", text: $text)
                .background(Color.white)
        }
    }
}

struct SearchBar_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Color.black
                .edgesIgnoringSafeArea(.all)
            
            SearchBar()
        }
    }
}
