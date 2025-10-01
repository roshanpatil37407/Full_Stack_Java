package streamAPI;

import java.util.*;
import java.util.stream.*;
public class Even_Odd { public static void main(String[] args) {
	        List<Integer> numbers = Arrays.asList(10, 15, 20, 25, 30, 35, 40);

	        List<Integer> evens = numbers.stream().filter(n -> n % 2 == 0).collect(Collectors.toList());

	        List<Integer> odds = numbers.stream().filter(n -> n % 2 != 0).collect(Collectors.toList());

	        System.out.println("Even Numbers: " + evens);
	        System.out.println("Odd Numbers: " + odds);
	    }
}
