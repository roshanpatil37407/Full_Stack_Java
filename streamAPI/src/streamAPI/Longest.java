package streamAPI;
import java.util.*;
import java.util.stream.*;
public class Longest {

	

	    public static void main(String[] args) {
	        List<String> words = Arrays.asList("apple", "banana", "pineapple", "grapes", "watermelon");

	        String longest = words.stream().max(Comparator.comparingInt(String::length)).orElse("No strings found");

	        System.out.println("Longest String: " + longest);
	    }
	}

	
	

