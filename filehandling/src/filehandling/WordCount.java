package filehandling;

import java.io.*;
import java.util.*;

public class WordCount {
    public static void main(String[] args) {
        String fp = "C:\\Users\\Admin\\Desktop\\New folder (3)\\data.txt";
        
        try {
        	File f=new File(fp);
        	Scanner sc=new Scanner (f);
        	
        	StringBuilder text=new StringBuilder();
        	while(sc.hasNextLine()) {
        		text.append(sc.nextLine()).append(" ");
        	}
        	sc.close();
        	
        	String t = text.toString().toLowerCase();
        	
        	 String[] words = t.split("[\\s\\p{Punct}]+");
        	 
        	 System.out.println(words.length);
        	 
        	 Set<String> unique= new HashSet<>(Arrays.asList(words));
        	 unique.remove(" ");
        	 System.out.println(unique);
        	 
        }
         catch(Exception e) {
        	 e.printStackTrace();
         }

	}

}
