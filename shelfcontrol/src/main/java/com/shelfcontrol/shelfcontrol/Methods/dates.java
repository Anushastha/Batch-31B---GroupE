package com.shelfcontrol.shelfcontrol.Methods;

import java.time.LocalDate;
import java.time.ZoneId;
import java.time.temporal.ChronoUnit;


public class dates{
    
    public static LocalDate getDate(){
        LocalDate date = LocalDate.now();
        return date;
        
    }
    public static LocalDate getDueDate(){
        LocalDate date = LocalDate.now().plusDays(15);
        return date;
    }
    public static long getStatus(LocalDate date){
        long noOfDaysBetween = ChronoUnit.DAYS.between(getDate(), date);
        return noOfDaysBetween;
    }
    
   
    
}
