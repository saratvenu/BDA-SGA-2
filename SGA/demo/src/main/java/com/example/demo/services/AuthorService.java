package com.example.demo.services;

import com.example.demo.entities.Author;
import com.example.demo.repositories.AuthorRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class AuthorService {

    @Autowired
    private AuthorRepository authorRepository;

    public List<Author> getAllAuthors() {
        return authorRepository.findAll();
    }

    public Author saveAuthor(Author author) {
        return authorRepository.save(author);
    }

    public Author getAuthorById(Long id) { // Add this method
        return authorRepository.findById(id)
                .orElseThrow(() -> new RuntimeException("Author not found")); // Handle not found
    }

    public Author updateAuthor(Long id, Author authorDetails) {
        Author author = getAuthorById(id); // Fetch the existing author
        author.setName(authorDetails.getName());
        author.setNationality(authorDetails.getNationality());
        return authorRepository.save(author);
    }
}
