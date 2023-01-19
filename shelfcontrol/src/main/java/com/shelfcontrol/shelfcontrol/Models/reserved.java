package com.shelfcontrol.shelfcontrol.Models;

import com.shelfcontrol.shelfcontrol.Methods.Date;

public class reserved{
    private Integer isbn;
    private String name;
    private String author;
    private Date reserveDate;
    
    public Integer getIsbn() {
        return isbn;
    }

    public void setIsbn(Integer isbn) {
        this.isbn = isbn;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }
    public String getAuthorName() {
        return author;
    }

    public void setAuthorName(String author) {
        this.author = author;
    }

    public Date getReservation() {
        return reserveDate;
    }

    public void setReservation(Date reserveDate) {
        this.reserveDate = reserveDate;
    }


}
