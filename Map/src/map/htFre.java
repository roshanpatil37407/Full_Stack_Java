package map;
import java.util.Hashtable;

public class htFre {

	    public static void main(String[] args) {
	        String text = "hello world";

	        Hashtable<Character, Integer> freq = new Hashtable<>();

	        for (char c : text.toCharArray()) {
	            if (c != ' ') {
	                freq.put(c, freq.getOrDefault(c, 0) + 1);
	            }
	        }

	        System.out.println( freq);
	    
	}


}







