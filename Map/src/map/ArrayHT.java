package map;
import java.util.Hashtable;
public class ArrayHT {

	    public static void main(String[] args) {
	        int[] arr = {1, 2, 3, 2, 4, 5, 1};
	        Hashtable<Integer, Boolean> seen = new Hashtable<>();
	        boolean hasDuplicates = false;

	        for (int num : arr) {
	            if (seen.containsKey(num)) {
	                hasDuplicates = true;
	                break;
	            }
	            seen.put(num, true);
	        }

	        System.out.println(hasDuplicates);
	    
	}

	
	
	
	
}
