package com.project.bookclub.services;

import java.util.List;
import java.util.Optional;

import org.springframework.stereotype.Service;

import com.project.bookclub.models.Book;
import com.project.bookclub.repositories.BookRepository;

@Service
public class BookService {
	
	private final BookRepository bookRepo;

	public BookService(BookRepository bookRepo) {
		this.bookRepo = bookRepo;
	}
	
    public Book getOne(Long id) {
        Optional<Book> book = bookRepo.findById(id);
        return book.isPresent() ? book.get() : null;
    }

    public List<Book> getAll() {
        return (List<Book>) bookRepo.findAll();
    }

    public Book create(Book dojo) {
        return bookRepo.save(dojo);
    }

    public Book update(Book dojo) {
        return bookRepo.save(dojo);
    }

    public void delete(Long id) {
        bookRepo.deleteById(id);
    }

}
