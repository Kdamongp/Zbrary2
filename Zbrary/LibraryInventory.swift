//
//  LibraryInventory.swift
//  Zbrary
//
//  Created by Kyle Damon on 9/8/22.
//

import SwiftUI


struct LibraryInventory: View {
    @StateObject var library = ReadData()
    @State private var searchText = ""
    @State var filteredLibrary = ReadData().collection
    var body: some View {
        NavigationView {
            VStack {
                Text("Search for a book to review from the list below by typing keywords in the search field below.")
                    .font(.title2)
                    .foregroundColor(.green)
                
                
                TextField("Search Here", text: $searchText)
                    .onChange(of: searchText, perform: { _ in
                        search()
                    })
                    .frame(minWidth: 0, maxWidth: 500, minHeight: 0, maxHeight: 50)
                    .padding(.trailing)
                    .foregroundColor(.blue)
                    .border(.gray)
                Spacer()
                
                ScrollView{
                    LazyVStack{
                        ForEach(filteredLibrary, id:\.id) { book in
                            NavigationLink(destination:{
                                VStack {
                                    HStack {
                                        Spacer()
                                        Button("Add Review") {
                                            AddBookView()
                                        }
                                        Spacer()
                                        Button("Read Reviews") {
                                            //                                            ReviewDetailView()
                                        }
                                        Spacer()
                                        
                                    }
                                    Spacer()
                                    Group {
                                        Image("bluebook")
                                            .resizable()
                                            .scaledToFit()
                                            .overlay(Text(book.title), alignment: .center)
                                            .multilineTextAlignment(.center)
                                            .foregroundColor(.white)
                                            .font(.title)
                                    }
                                    Text(book.title)
                                        .font(.title)
                                        .foregroundColor(.black)
                                        .padding()
                                    Text(book.author)
                                        .foregroundColor(.red)
                                    
                                    //                                    Image("Red Book")
                                    //                                    Text(book.title)
                                    //                                        .foregroundColor(.blue)
                                    //                                        .font(.title)
                                    //                                    Text(book.author)
                                    //                                        .foregroundColor(.red)
                                    Spacer()
                                    Spacer()
                                    
                                }
                                
                                //This is where we will need to add a InventoryBookView?
                            }){
                                VStack {
                                    
                                    HStack {
                                        Text("Book Title:")
                                            .foregroundColor(.black)
                                            .padding(.leading)
                                        
                                        Text(book.title)
                                            .frame(maxWidth: .infinity,  alignment: .leading)
                                            .foregroundColor(.blue)
                                            .font(.body)
                                            .multilineTextAlignment(.leading)
                                            .padding(.trailing)
                                    }
                                    
                                    HStack {
                                        Text("Written by:")
                                            .foregroundColor(.black)
                                            .padding(.leading)
                                        
                                        Text(book.author)
                                            .frame(maxWidth: .infinity,  alignment: .leading)
                                            .foregroundColor(.red)
                                            .font(.body)
                                        
                                    }
                                    Divider()
                                        .overlay(.blue)
                                        .frame(width: .infinity, height: 5)
                                }
                            }
                            
                        }
                    }
                }
            }
        }
        .navigationViewStyle(.stack)
    }
    func search () {
        if searchText.isEmpty {
            filteredLibrary = library.collection
        } else {
            filteredLibrary = library.collection.filter {
                $0.title.localizedCaseInsensitiveContains(searchText) ||
                $0.author.localizedCaseInsensitiveContains(searchText)
            }
        }
    }
}

struct LibraryInventory_Previews: PreviewProvider {
    static var previews: some View {
        LibraryInventory()
    }
}
