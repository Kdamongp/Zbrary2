//
//  ResearchView.swift
//  Zbrary
//
//  Created by Kyle Damon on 9/17/22.
//

import SwiftUI

struct FindView: View {
    var body: some View {
       
        
        Image ("Paper2")
            .resizable()
            .scaledToFit()
//            .padding()
        
            .overlay(
                
                VStack {
                    Image("Find book")
                        .resizable()
                        .scaledToFit()
                    HStack {
                        Spacer()
                        Spacer()
                        Spacer()
                        Spacer()
                        Spacer()
                        Spacer()
                        Button {
                            print("sora button was pushed")
                            
                            let sora = "sora://user?username=johndoe"
                            let soraUrl = URL(string: sora)!
                            if UIApplication.shared.canOpenURL(soraUrl)
                            {
                                UIApplication.shared.open(soraUrl)
                            } else {
                                //redirect to safari because the user doesn't have Sora
                                UIApplication.shared.open(URL(string: "http://soraapp.com/")!)
                            }
                        } label: {
                            Image("Soraapp")
                                .resizable()
                                .scaledToFit()
                          
                        }
                        Image("Sora words")
                            .resizable()
                            .scaledToFit()
                            .padding(.trailing)
                        Spacer()
                        Spacer()
                            }
                    
                    HStack {
                        Spacer()
                        Spacer()
                        Spacer()
                        Spacer()
                        Spacer()
                        Spacer()
                        Button {
                               UIApplication.shared.open(URL(string: "https://destinydiscover.com")!)
                           }label: {
                              
                               Image("Destinyapp")
                                   .resizable()
                                   .scaledToFit()
                                  
                                 
                           }
                        Image("destiny words")
                            .resizable()
                            .scaledToFit()
                           
                        Spacer()
                        Spacer()
                            }
                    
                   
                    Image("Tap")
                        .resizable()
                        .scaledToFit()
                    Spacer()
                    Spacer()
                    Spacer()
                  
                }
                )
               
    }
}

struct FindView_Previews: PreviewProvider {
    static var previews: some View {
        FindView()
    }
}

