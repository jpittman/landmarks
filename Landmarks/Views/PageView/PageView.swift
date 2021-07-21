//
//  PageView.swift
//  Landmarks
//
//  Created by jedi on 7/20/21.
//

import SwiftUI

struct PageView<Page: View>: View {
    
    var pages: [Page]
    @State private var currentPage = 0
    
    var body: some View {
        VStack {
            PageViewController(pages: pages, currentPage: $currentPage)
            Text("Current Page: \(currentPage)")
        }
        
        // An experiment from the tutorial.
//        VStack {
//            PageViewController(pages: pages, currentPage: $currentPage)
//            Divider()
//            Button(action: {
//                currentPage += 1
//                // Preview crashes without the check below.
//                if currentPage >= pages.count {
//                    currentPage = 0
//                }
//            }) {
//                Text("Next")
//            }
//        }
    }
}

struct PageView_Previews: PreviewProvider {
    static var previews: some View {
        PageView(pages: ModelData().features.map { FeatureCard(landmark: $0)})
            .aspectRatio(3 / 2, contentMode: .fit)
    }
}
