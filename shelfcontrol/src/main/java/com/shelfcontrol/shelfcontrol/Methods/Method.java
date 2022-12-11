package com.shelfcontrol.shelfcontrol.Methods;

public class Method {
   public String firstCharacter(String word){
      String[] nameArr = word.split(" ");
        String firstChar = "";
        for(int i=0; i<nameArr.length; i++) {
            nameArr[i] = nameArr[i].substring(0, 1);
            firstChar = String.join("", nameArr);

        }
        return firstChar;
        
   }
}
