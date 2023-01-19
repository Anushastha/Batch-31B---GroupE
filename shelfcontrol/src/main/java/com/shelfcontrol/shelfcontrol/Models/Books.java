package com.shelfcontrol.shelfcontrol.Models;

import java.time.Year;

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

    public Books() {}

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
    public void setIsbn(int isbn) {
        this.isbn = isbn;
    }

    public void setBookName(String bookName) {
        this.bookName = bookName;
    }

    public void setAuthorName(String authorName) {
        this.authorName = authorName;
    }

    public void setCategory(String category) {
        this.category = category;
    }

    public void setCopies(int copies) {
        this.copies = copies;
    }

    public void setPublisherName(String publisherName) {
        this.publisherName = publisherName;
    }

    public void setPublishedYear(Year publishedYear) {
        this.publishedYear = publishedYear;
    }
    public void setSynopsis(String sysnopsis) {
        this.synopsis = sysnopsis;
    }
}
