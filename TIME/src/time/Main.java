package time;

import java.util.*;

public class Main {
	 public static void main(String[] args) {

	        Scanner sc = new Scanner(System.in);
	        String A = sc.next(); // reading string A
	        String B = sc.next(); // reading string B

	        System.out.println(A.length() + B.length()); // 1. sum of lengths
	        System.out.println(A.compareTo(B) > 0 ? "Yes" : "No"); // 2. lexicographic compare

	        // 3. capitalize
	        String s1 = A.substring(0,1).toUpperCase() + A.substring(1);
	        String s2 = B.substring(0,1).toUpperCase() + B.substring(1);

	        System.out.println(s1 + " " + s2); // final output
	    }
}
