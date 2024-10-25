package com.example.demo.controllers;

import com.example.demo.entities.Author;
import com.example.demo.services.AuthorService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

@Controller
public class AuthorController {

    @Autowired
    private AuthorService authorService;

    @GetMapping("/authors")
    public String listAuthors(Model model) {
        model.addAttribute("authors", authorService.getAllAuthors());
        return "authors"; // View name for listing authors
    }

    @GetMapping("/authors/new")
    public String showNewAuthorForm(Model model) {
        model.addAttribute("author", new Author());
        return "new_author"; // View name for creating a new author
    }

    @PostMapping("/authors")
    public String createAuthor(@ModelAttribute("author") Author author) {
        authorService.saveAuthor(author);
        return "redirect:/authors"; // Redirect after creating
    }

    @GetMapping("/authors/edit/{id}")
    public String showEditAuthorForm(@PathVariable Long id, Model model) {
        Author author = authorService.getAuthorById(id); // This now works
        model.addAttribute("author", author);
        return "edit_author"; // View name for editing author
    }

    @PostMapping("/authors/{id}")
    public String updateAuthor(@PathVariable Long id, @ModelAttribute("author") Author author) {
        authorService.updateAuthor(id, author);
        return "redirect:/authors"; // Redirect after updating
    }
}


