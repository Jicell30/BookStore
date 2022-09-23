//
//  BookController.swift
//  BookStore
//
//  Created by Jicell on 9/23/22.
//

import Foundation

class BookController {
    
    //MARK: -Singleton
    static let sharedInstance = BookController()
    
    //Mark: - Source of Thruth
    
    var books: [Book] = []
    
    //MARK: - CRUD
    
    func create (author: String, title: String, rating: Double, synopsis: String) {
        let book = Book(author: author, title: title, rating: rating, synopsis: synopsis)
        books.append(book)
        
    }
    
    func update(bookToUpdate: Book, newAuthor: String, newTitle: String, newRating: Double, newSynopsis: String) {
        bookToUpdate.title = newTitle
        bookToUpdate.rating = newRating
        bookToUpdate.author = newAuthor
        bookToUpdate.synopsis = newSynopsis
        bookToUpdate.lastUpdated = Date()
    }
    
    func delete(bookToDelete:Book) {
        guard let indexOfBookToDelete = books.firstIndex(of: bookToDelete) else {return}
        books.remove(at: indexOfBookToDelete)
    
        
        
    }
    
} //End of class.
