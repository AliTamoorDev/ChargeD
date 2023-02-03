//
//  RatingsView.swift
//  RatingsView
//
//  Created by Stewart Lynch on 2021-09-05.
//

import SwiftUI

struct RatingsView: View {
    @State var currentRating: Int = 4
//    var passedInRating: Int
//    var updateRating: (Int) -> Void
    var maxRating = 5
    var color = ColorConstants.tertiaryColor
    var width: Int = 25
    var fillImageName = "star.fill"
    var openImageName = "star"
    var body: some View {
        VStack {
        HStack(spacing: 5) {
            ForEach(0..<maxRating) { rating in
                Image(systemName: rating < currentRating ? fillImageName : openImageName)
                    .resizable()
                    .scaledToFit()
                    .foregroundColor(self.color)
                    .onTapGesture {
                        currentRating = rating + 1
//                        if thisBook != nil {
//                            thisBook!.rating = value
//                        } else {
//                            newRating = value
//                        }
                }
            }
        }
        .frame(width: CGFloat(maxRating * width))
        }
//        .onAppear {
//            currentRating = passedInRating
//        }
    }
}

struct RatingsView_Previews: PreviewProvider {
//    static func updateRating(value: Int) {}
    static var previews: some View {
        RatingsView()
    }
}
