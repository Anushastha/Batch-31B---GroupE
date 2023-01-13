package com.shelfcontrol.shelfcontrol.Models;

import java.time.Year;

public class search {
    private int isbn;
    private String bookName;
    private String authorName;
    private String category;
    private Year publishedYear;

    public search(int isbn, String bookName, String authorName, String category, Year publishedYear) {
        this.isbn = isbn;
        this.bookName = bookName;
        this.authorName = authorName;
        this.category = category;
        this.publishedYear = publishedYear;
    }

    public search() {
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

    public Year getPublishedYear(){
        return publishedYear;
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
    public void setyear(Year publishedYear){
        this.publishedYear = publishedYear;
    }
}
