//
//  TrailerList.swift
//  NetflixClone-(MVVM)-SwiftUI
//
//  Created by Mehdi MMS on 07/03/2022.
//

import SwiftUI

struct TrailerList: View {
    
    var trailers: [Trailer]
    let screen = UIScreen.main.bounds
    
    var body: some View {
        VStack {
            ForEach(trailers) { trailer in
                
                VStack(alignment: .leading) {
                    VideoPreviewImage(imageURL: trailer.thumbnailImageURL, vieoURL: trailer.videoURL)
                        .frame(maxWidth: screen.width)
                    
                    Text(trailer.name)
                        .font(.headline)
                }
                .foregroundColor(.white)
                .padding(.bottom, 10)
            }
        }
    }
}

struct TrailerList_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Color.black
                .edgesIgnoringSafeArea(.all)
            TrailerList(trailers: exampleTrailers)
        }
    }
}
