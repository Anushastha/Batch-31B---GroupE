package com.shelfcontrol.shelfcontrol.Models;

import java.time.LocalDate;
import java.util.Date;

import com.shelfcontrol.shelfcontrol.Methods.date;

public class borrowed {
    private Integer isbn;
    private String name;
    private Date borrowed;
    private Date duedate;
    private Long status;

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

    public Date getBorrowed() {
        return borrowed;
    }

    public void setBorrowed(Date borrowed) {
        this.borrowed = borrowed;
    }

    public Date getDuedate() {
        return duedate;
    }

    public void setDuedate(Date duedate) {
        this.duedate = duedate;
    }

    public Long getStatus() {
        return status;
    }

    public void setStatus(LocalDate duDate) {
        this.status = date.getStatus(duDate);
    }

    
}