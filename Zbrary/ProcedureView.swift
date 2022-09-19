//
//  ProcedureView.swift
//  Zbrary
//
//  Created by Kyle Damon on 9/17/22.
//

import SwiftUI

struct ProcedureView: View {
    var body: some View {
        Image ("Paper2")
            .resizable()
            .scaledToFit()
           
        
            
            .overlay(
                Image("Procedures")
                    .resizable()
                    .scaledToFit()
                    .padding(75)
            )
            Text("Watch a Video")
    }
}

struct ProcedureView_Previews: PreviewProvider {
    static var previews: some View {
        ProcedureView()
    }
}
