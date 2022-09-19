
import SwiftUI

struct WriteView: View {
    @Environment(\.managedObjectContext) var moc
    @FetchRequest(sortDescriptors: [
        SortDescriptor(\.rating, order: .reverse),
        SortDescriptor(\.title)
    ]) var books: FetchedResults<Book>

    @State private var showingAddScreen = false

    var body: some View {
       NavigationView {
            List {
                ForEach(books) { book in
                    NavigationLink {
                        ReviewDetailView(book: book)
                        //Changed destination so we'd go to the review
                    } label: {
                        HStack {
                            EmojiRatingView(rating: book.rating)
                                .font(.largeTitle)

                            VStack(alignment: .leading) {
                                Text(book.title ?? "Unknown Title")
                                    .font(.headline)

                                Text(book.author ?? "Unknown Author")
                                    .foregroundColor(.secondary)
                            }
                        }
                    }
                }

            .navigationTitle("Write a Review")
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                }

                ToolbarItem(placement: .navigationBarTrailing) {
                    Button {
                        showingAddScreen.toggle()
                    } label: {
                        Label("Add Book", systemImage: "plus")
                    }
                }
            }
            .sheet(isPresented: $showingAddScreen) {
                AddBookView()
            }
            .navigationViewStyle(.stack)
        }

    }
    }
    func deleteBooks(at offsets: IndexSet) {
        for offset in offsets {
            let book = books[offset]
            moc.delete(book)
        }
// Your code isn't saving even with line 63 live... is this new?
        
     //   try? moc.save()
    }
}

struct WriteView_Previews: PreviewProvider {
    static var previews: some View {
        WriteView()
    }
}


