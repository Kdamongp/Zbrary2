//
//  ExpectationView.swift
//  Zbrary
//
//  Created by Kyle Damon on 9/17/22
//

import SwiftUI

struct ExpectationView: View {
    var body: some View {
        
        Image ("Paper2")
            .resizable()
            .scaledToFit()
            .padding()
        
            .overlay(
                Image("Expectations")
                    .resizable()
                    .scaledToFit()
                    .padding(75)
              
            )
    }
}

struct ExpectationView_Previews: PreviewProvider {
    static var previews: some View {
        ExpectationView()
    }
}
