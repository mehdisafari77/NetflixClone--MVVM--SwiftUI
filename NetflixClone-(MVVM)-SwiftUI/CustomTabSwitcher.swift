//
//  CustomTabSwitcher.swift
//  NetflixClone-(MVVM)-SwiftUI
//
//  Created by Mehdi MMS on 27/02/2022.
//

import SwiftUI

struct CustomTabSwitcher: View {
    
    var tabs: [CustomTab]
    
    func widthForTab(_ tab: CustomTab) -> CGFloat {
        return 100
    }
    
    var body: some View {
        VStack {
            // Custom Tab Picker
            ScrollView(.horizontal, showsIndicators: false) {
                HStack {
                    ForEach(tabs, id: \.self) { tab in
                        VStack {
                            // Red Bar
                            Rectangle()
                                .frame(width: widthForTab(tab), height: 4)
                            
                            // Button
                            Button(action: {
                                //
                            }, label: {
                                Text(tab.rawValue)
                                    .font(.system(size: 16, weight: .bold))

                            })
                            .buttonStyle(PlainButtonStyle())

                        }
                    }
                }
            }
            
            // Selected View
            Text("SELECTED VIEW")
        }
        .foregroundColor(.white)
    }
}


enum CustomTab: String {
    case episodes = "EPISODES"
    case trailers = "TRAILERS & MORE"
    case more = "MORE LIKE THIS"
}

struct CustomTabSwitcher_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Color.black
                .edgesIgnoringSafeArea(.all)
            
            CustomTabSwitcher(tabs: [.episodes, .trailers, .more])
        }
    }
}
