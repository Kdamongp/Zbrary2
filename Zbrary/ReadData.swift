//
//  ReadData.swift
//  learnJSON
//
//  Created by Karen Seimears on 8/29/22.
//

import Foundation

struct Library: Codable  {
    //var id = UUID()
    var libraryCollection: [LibraryBook]
}

struct LibraryBook: Codable, Identifiable, Hashable, Equatable {
        //var internalID = UUID()
        var id: Int
        var title: String
        var author: String

    func hash(into hasher: inout Hasher) {
        hasher.combine(id)
    }

    static func == (lhs: LibraryBook, rhs: LibraryBook) -> Bool {
            lhs.id == rhs.id
    }
}


class ReadData: ObservableObject  {
    //@Published var libraryCollection: Library = Library(libraryCollection: [Book]())
    @Published var collection: [LibraryBook] = [LibraryBook]()

    init(){
        loadData()
    }

    func loadData()  {
        guard let url = Bundle.main.url(forResource: "libraryCollection", withExtension: "json")
            else {
                print("Json file not found")
                return
            }

        var data: Data? = nil
        do {
            data = try Data(contentsOf: url)
        } catch {
            print(error)
        }

        var library: Library? = nil
        do {
            library = try JSONDecoder().decode(Library.self, from: data!)
        } catch {
            print(error)
        }
        collection = library?.libraryCollection ?? [LibraryBook]()


    }

}
