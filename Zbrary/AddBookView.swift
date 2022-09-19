//
//  AddBookView.swift
//  Zbrary
//
//  Kyle Damon Fall 2022
//

import SwiftUI

struct AddBookView: View {
    @Environment(\.managedObjectContext) var moc
    @Environment(\.dismiss) var dismiss

    @State private var title = ""
    @State private var author = ""
    @State private var rating = 3
    @State private var genre = ""
    @State private var review = ""
    
    @StateObject var library = ReadData()
    
    let genres = ["Non Fiction", "Fiction", "Everyone", "Adventure", "Humor", "Mystery", "Scary","Series","Science Fiction/Fantasy","Biography"]

    var body: some View {
       
        NavigationView {
            Form {
                Section {
                    TextField("Name of book", text: $title)
                    TextField("Author's name", text: $author)

                    Picker("Genre", selection: $genre) {
                        ForEach(genres, id: \.self) {
                            Text($0)
                        }
                    }
                }

                Section {
                    TextField("Add your review", text: $review)
                    RatingView(rating: $rating)
                } header: {
                    Text("Write a review")
                } footer: {
                    Text("Any inappropriate content will be filtered and user banned.")
                }

                Section {
                    Button("Save") {
                        let newBook = Book(context: moc)
                        newBook.id = UUID()
                        newBook.title = title
                        newBook.author = author
                        newBook.rating = Int16(rating)
                        newBook.review = review
                        newBook.genre = genre
                    
                        
                        try? moc.save()
                        dismiss()
                    }
                }
            .disabled(title.isEmpty || genre.isEmpty || author.isEmpty || review.count < 10)
            }
            .navigationTitle("Add Book")
        }
        .navigationViewStyle(.stack)
    }
}


struct AddBookView_Previews: PreviewProvider {
    static var previews: some View {
        AddBookView()
    }
}

