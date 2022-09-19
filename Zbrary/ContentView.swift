//
//  ZbraryApp.swift
//  Zbrary
//
//  Created by Kyle Damon on 7/26/22.
//  Modified on Sept 17, 2022
//
import SwiftUI
import CoreData

struct ContentView: View {
    
    
    @Environment(\.managedObjectContext) var moc
    
    @FetchRequest(sortDescriptors: [
        SortDescriptor(\.title),
        SortDescriptor(\.author)
    ]) var books: FetchedResults<Book>
    
    //        @State private var showingAddScreen = false
    
    var body: some View {
        
        
//        NavigationView {
//            List {
//                ForEach(books) { book in
//                    NavigationLink {
//                        ReviewDetailView(book: book)
//                    } label: {
//                        HStack {
//                            EmojiRatingView(rating: book.rating)
//                                .font(.largeTitle)
//
//                            VStack(alignment: .leading) {
//
//                                if Int16(book.rating) == 1 {
//                                    Text(book.title ?? "Unknown Title")
//                                        .font(.headline)
//                                        .foregroundColor(.red)
//                                } else {
//                                    Text(book.title ?? "Unknown Title")
//                                        .font(.headline)
//                                }
//
//
//
//                                Text(book.author ?? "Unknown Author")
//                                    .foregroundColor(.secondary)
//
//                            }
//                        }
//                    }
//                }
//            }
//            .navigationTitle("Reviewed Books")
//            .foregroundColor(Color.purple)
//
            
            TabView {
                HomeView()
                    .tabItem {
                        Label("Home", systemImage: "house")
                    }
                
                ExpectationView()
                    .tabItem {
                        Label("Expectations", systemImage: "person.fill.checkmark")
                    }
                
                ProcedureView()
                    .tabItem {
                        Label("Procedures", systemImage: "figure.walk")
                    }
                
                FindView()
                    .tabItem {
                        Label("Find a Book", systemImage:  "books.vertical")
                    }

                ResearchView()
                    .tabItem {
                        Label("Research Sites", systemImage: "books.vertical.circle")
                    }
                
                ReviewView()
                    .tabItem {
                        Label("Read Reviews", systemImage: "square.and.pencil")
                    }
                
                LibraryInventory()
                    .tabItem {
                        Label("Add Reviews", systemImage: "rectangle.and.text.magnifyingglass")
                    }
                
               
                
                
                    .navigationViewStyle(.stack)
            }
        }
    }
    

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


