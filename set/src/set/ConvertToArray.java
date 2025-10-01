package set;

import java.util.LinkedHashSet;

public class ConvertToArray {

	public static void main(String[] args) {
		        LinkedHashSet<String> set = new LinkedHashSet<>();
		        set.add("Red");
		        set.add("Green");
		        set.add("Blue");

		        String[] arr = set.toArray(new String[0]);

		        System.out.println("Array elements:");
		        for (String s : arr) {
		            System.out.println(s);
		        }
		    }

}
