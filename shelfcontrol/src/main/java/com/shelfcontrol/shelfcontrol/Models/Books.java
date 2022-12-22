package com.shelfcontrol.shelfcontrol.Models;

import java.time.Year;
import com.mysql.cj.jdbc.Blob;

public class Books {
    private int isbn;
    private String bookName;
    private String authorName;
    private String category;
    private int copies;
    private String publisherName;
    private Year publishedYear;
    private String synopsis;

    public Books(int isbn, String bookName, String authorName, String category, int noOfCopies, String publisherName,
            Year publishedYear, String synopsis) {
        this.isbn = isbn;
        this.bookName = bookName;
        this.authorName = authorName;
        this.category = category;
        this.copies = noOfCopies;
        this.publisherName = publisherName;
        this.publishedYear = publishedYear;
        this.synopsis = synopsis;
    }

    public int getIsbn() {
        return isbn;
    }

    public String getBookName() {
        return bookName;
    }

    public String getAuthorName() {
        return authorName;
    }

    public String getCategory() {
        return category;
    }

    public int getCopies() {
        return copies;
    }

    public String getPublisherName() {
        return publisherName;
    }

    public Year getPublishedYear() {
        return publishedYear;
    }

    public String getSynopsis() {
        return synopsis;
    }
}
