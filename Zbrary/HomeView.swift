//
//  ZbraryApp.swift
//  Zbrary
//
//  Created by Kyle Damon on 7/26/22.
//  Modified on Sept 17, 2022

import SwiftUI
struct HomeView: View {
    
    
    var body: some View {
        VStack {
            Image ("Cover2")
                .resizable()
                .scaledToFit()
//            Text("Zavala Library")
//                .font(.largeTitle)
//                .fontWeight(.bold)
//                .foregroundColor(.blue)
//            Spacer()
//            Image ("school logo")
//                .resizable()
//                .scaledToFit()
//
//
//            Spacer()
//
//            Text("There should be some cool Kyle-Art here!")
//                .fontWeight(.bold)
//                .font(.largeTitle)
//
//            Spacer()
//            Spacer()
//
            Text("Click on a tab below to get started")
                .foregroundColor(.blue)
                .fontWeight(.light)
//            Spacer()
//
        }
    }
    
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
