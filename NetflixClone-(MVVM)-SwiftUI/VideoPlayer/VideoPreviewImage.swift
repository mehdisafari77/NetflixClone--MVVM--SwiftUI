//
//  VideoPreviewImage.swift
//  NetflixClone-(MVVM)-SwiftUI
//
//  Created by Mehdi MMS on 07/03/2022.
//

import SwiftUI
import KingfisherSwiftUI

struct VideoPreviewImage: View {
    
    var imageURL: URL
    var vieoURL: URL
    
    @State private var showingVideoPlayer = false
    
    var body: some View {
        ZStack {
            KFImage(imageURL)
                .resizable()
                .aspectRatio(contentMode: .fill)
            
            Button(action: {
                showingVideoPlayer = true
            }, label: {
                Image(systemName: "play.circle")
                    .foregroundColor(.white)
                    .font(.system(size: 40))
            })
                .sheet(isPresented: $showingVideoPlayer) {
                    SwiftUIVideoView(url: vieoURL)
                }
        }
    }
}

struct VideoPreviewImage_Previews: PreviewProvider {
    static var previews: some View {
        VideoPreviewImage(imageURL: exampleImageURL, vieoURL: exampleVideoURL)
    }
}
