# NetflixClone--MVVM--SwiftUI
A Netflix UI Clone in SwiftUI and MVVM architecture

## Summary
This app is a UI functionality based app only, using links to gather dummy data to display and has not server running on the backend. All views are coded with SWIFTUI and MVVM architecture. 

## Built With
* [SwiftUI](https://developer.apple.com/tutorials/swiftui)
* [UIKit](https://developer.apple.com/documentation/uikit)

## Gif of App
![Gif](./NetflixClone-(MVVM)-SwiftUI/Shared/Assets.xcassets/gif.dataset/gif.gif)

## Installation Steps For Local Running
1. Clone project.
2. Open terminal
3. cd 'your-desired-path'
4. git clone 'paste-link-here'
5. open project in Xcode and run

## Code Snippet Of Movie Preview Row
```swift
var body: some View {
        VStack(alignment: .leading) {
            Text("Previews")
                .font(.title3)
                .bold()
                .foregroundColor(.white)
                .padding(.leading, 6)
            
            ScrollView(.horizontal, showsIndicators: false, content: {
                LazyHStack {
                    ForEach(0..<movies.count) { movieIndex in
                        let movie = movies[movieIndex]
                        
                        MoviePreviewCell(movie: movie)
                            .frame(width: 120, height: 120)
                            .padding(.trailing, 14)
                            .padding(.leading, 6)
                            .onTapGesture(perform: {
                                previewStartingIndex = movieIndex
                                showPreviewFullscreen = true
                            })
                    }
                }
            })
        }
        .frame(height: 185)
    }
}
```


## Author

* **Mehdi Safari**

- [Link to Github](https://github.com/mehdisafari77)
- [Link to LinkedIn](https://www.linkedin.com/in/mehdi-safari-992799142/)
