package streamAPI;

import java.util.*;
import java.util.stream.*;

public class StreamDemo {



	    // Q1: Create a stream from a list of integers and print each element
	    public static void q1() {
	        List<Integer> numbers = Arrays.asList(10, 20, 30, 40, 50);
	        System.out.println("Q1: Stream elements:");
	        numbers.stream().forEach(System.out::println);
	    }

	    // Q2: Filter even numbers from a list using Stream API
	    public static void q2() {
	        List<Integer> numbers = Arrays.asList(1, 2, 3, 4, 5, 6);
	        System.out.println("Q2: Even numbers:");
	        numbers.stream()
	               .filter(n -> n % 2 == 0)
	               .forEach(System.out::println);
	    }

	    // Q3: Find the sum of all elements in a list
	    public static void q3() {
	        List<Integer> numbers = Arrays.asList(5, 10, 15, 20);
	        int sum = numbers.stream().mapToInt(Integer::intValue).sum();
	        System.out.println("Q3: Sum = " + sum);
	    }

	    // Q4: Find the maximum element from a list
	    public static void q4() {
	        List<Integer> numbers = Arrays.asList(12, 45, 67, 23, 89, 34);
	        int max = numbers.stream().max(Integer::compare).get();
	        System.out.println("Q4: Max = " + max);
	    }

	    // Q5: Count the number of elements in a list
	    public static void q5() {
	        List<String> names = Arrays.asList("Ramesh", "Suresh", "Mahesh", "Ganesh");
	        long count = names.stream().count();
	        System.out.println("Q5: Count = " + count);
	    }

	    // Q6: Convert a list of strings to uppercase
	    public static void q6() {
	        List<String> names = Arrays.asList("rohan", "amit", "vishal", "sneha");
	        System.out.println("Q6: Uppercase:");
	        names.stream()
	             .map(String::toUpperCase)
	             .forEach(System.out::println);
	    }

	    // Q7: Sort a list of strings in ascending order
	    public static void q7() {
	        List<String> fruits = Arrays.asList("Banana", "Apple", "Mango", "Orange");
	        System.out.println("Q7: Sorted strings:");
	        fruits.stream()
	              .sorted()
	              .forEach(System.out::println);
	    }

	    // Q8: Find the average of all numbers in a list
	    public static void q8() {
	        List<Integer> numbers = Arrays.asList(10, 20, 30, 40, 50);
	        double avg = numbers.stream()
	                            .mapToInt(Integer::intValue)
	                            .average()
	                            .getAsDouble();
	        System.out.println("Q8: Average = " + avg);
	    }

	    // Q9: Find the square of each element in a list
	    public static void q9() {
	        List<Integer> numbers = Arrays.asList(2, 3, 4, 5);
	        System.out.println("Q9: Squares:");
	        numbers.stream()
	               .map(n -> n * n)
	               .forEach(System.out::println);
	    }

	    // Q10: Check if all elements in a list are greater than a certain value
	    public static void q10() {
	        List<Integer> numbers = Arrays.asList(15, 20, 25, 30, 35);
	        boolean allGreater = numbers.stream().allMatch(n -> n > 10);
	        System.out.println("Q10: All elements > 10? " + allGreater);
	    }

	    public static void main(String[] args) {
	        q1();
	        System.out.println("----------------");
	        q2();
	        System.out.println("----------------");
	        q3();
	        System.out.println("----------------");
	        q4();
	        System.out.println("----------------");
	        q5();
	        System.out.println("----------------");
	        q6();
	        System.out.println("----------------");
	        q7();
	        System.out.println("----------------");
	        q8();
	        System.out.println("----------------");
	        q9();
	        System.out.println("----------------");
	        q10();
	    }
	}


