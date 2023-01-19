package com.shelfcontrol.shelfcontrol.Methods;

import java.time.LocalDate;
import java.time.ZoneId;


public class Date {
    
    public static LocalDate getDate(){
        LocalDate date = LocalDate.now();
        return date;
        
    }
    public static LocalDate getDueDate(){
        LocalDate date = LocalDate.now().plusDays(15);
        return date;
    }
    
   
    
}
