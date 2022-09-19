//
//  EmojiRatingView.swift
//  Zbrary
//
//  Kyle Damon Fall 2022
//

import SwiftUI

struct EmojiRatingView: View {
    let rating: Int16

    var body: some View {
//
        switch rating {
        case 1:
            return Image("5star")
                .resizable()
                .scaledToFit()
                .frame(width: UIScreen.main.bounds.width * 0.5) 
        case 2:
            return Image("4star")
                .resizable()
                .scaledToFit()
                .frame(width: UIScreen.main.bounds.width * 0.5)
        case 3:
            return Image("3star")
                .resizable()
                .scaledToFit()
                .frame(width: UIScreen.main.bounds.width * 0.5)
        case 4:
            return Image("2star")
                .resizable()
                .scaledToFit()
                .frame(width: UIScreen.main.bounds.width * 0.5)
        default:
            return Image("1star")
                .resizable()
                .scaledToFit()
                .frame(width: UIScreen.main.bounds.width * 0.5)
        }
    }
}

struct EmojiRatingView_Previews: PreviewProvider {
    static var previews: some View {
        EmojiRatingView(rating: 3)
    }
}

