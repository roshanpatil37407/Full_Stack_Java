package set;

import java.util.HashSet;
import java.util.LinkedHashSet;

public class StringDemo {

	 public static void main(String[] args) {
	        String str = "programming";
	        LinkedHashSet<Character> set = new LinkedHashSet<>();

	        for (char ch : str.toCharArray()) {
	            if (set.contains(ch)) {
	                set.remove(ch); 
	            } else {
	                set.add(ch); 
	            }
	        }

	        if (!set.isEmpty()) {
	            System.out.println( set.iterator().next());
	        } else {
	            System.out.println("No unique character found.");
	        }
		

	}

}
