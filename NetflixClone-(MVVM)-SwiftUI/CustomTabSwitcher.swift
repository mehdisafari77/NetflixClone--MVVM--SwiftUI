//
//  CustomTabSwitcher.swift
//  NetflixClone-(MVVM)-SwiftUI
//
//  Created by Mehdi MMS on 27/02/2022.
//

import SwiftUI

struct CustomTabSwitcher: View {
    var body: some View {
        VStack {
            // Custom Tab Picker
            ScrollView(.horizontal, showsIndicators: false) {
                Text("TEST")
            }
            
            // Selected View
            Text("SELECTED VIEW")
        }
        .foregroundColor(.white)
    }
}

struct CustomTabSwitcher_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Color.black
                .edgesIgnoringSafeArea(.all)
            
            CustomTabSwitcher()
        }
    }
}
