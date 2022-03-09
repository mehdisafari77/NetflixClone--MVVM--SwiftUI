//
//  HomeStack.swift
//  NetflixClone-(MVVM)-SwiftUI
//
//  Created by Mehdi MMS on 08/03/2022.
//

import Foundation
import SwiftUI

struct HomeStack: View {
    var vm: HomeVM
    
    @Binding var movieDetailToShow: Movie?
    
    var topRowSelection: HomeTopRow
    
    var body: some View {
        ForEach(vm.allCategories, id: \.self) { category in
            VStack {
                HStack {
                    Text(category)
                        .font(.title3)
                        .bold()
                    Spacer()
                }
                
                ScrollView(.horizontal, showsIndicators: false) {
                    LazyHStack {
                        ForEach(vm.getMovie(forCat: category)) { movie in
                            ZStack(alignment: .leading) {
                                
                                Image("netflix_logo")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 30)
                                    .padding(.top, -90)
                                
                                StandardHomeMovie(movie: movie)
                                    .frame(width: 100, height: 200)
                                    .padding(.horizontal, 20)
                                    .onTapGesture(perform: {
                                        movieDetailToShow = movie
                                    })
                                    .zIndex(-1)
                            }
                        }
                    }
                }
            }
        }
    }
}
