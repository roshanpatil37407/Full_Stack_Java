package set;

import java.util.LinkedHashSet;

public class UniqueWordCount {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		String str="I am Roshan Patil";
		String [] words=str.split(" ");
		
		
		 LinkedHashSet<String> set = new LinkedHashSet<>();
	        for (String word : words) {
	        	set.add(word.toLowerCase());
	        	
	        	
	        }
	        System.out.println(set.size());
	        
	

	}

}
