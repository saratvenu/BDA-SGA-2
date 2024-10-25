package com.example.demo.services;

import com.example.demo.entities.Book;
import com.example.demo.repositories.BookRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class BookService {

    @Autowired
    private BookRepository bookRepository;

    public List<Book> getAllBooks() {
        return bookRepository.findAll();
    }

    public Book saveBook(Book book) {
        return bookRepository.save(book);
    }

    public Book getBookById(Long id) { // Add this method
        return bookRepository.findById(id)
                .orElseThrow(() -> new RuntimeException("Book not found")); // Handle not found
    }

    public Book updateBook(Long id, Book bookDetails) {
        Book book = getBookById(id); // Fetch the existing book using the new method
        book.setTitle(bookDetails.getTitle());
        book.setGenre(bookDetails.getGenre());
        book.setAuthor(bookDetails.getAuthor());
        return bookRepository.save(book);
    }

    public List<Book> findBooksByAuthor(String authorName) {
        return bookRepository.findBooksByAuthorName(authorName);
    }
}
