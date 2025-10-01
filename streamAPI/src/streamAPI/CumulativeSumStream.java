package streamAPI;

import java.util.*;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.stream.Collectors;

import java.util.*;
import java.util.stream.*;

public class CumulativeSumStream {
    public static void main(String[] args) {
        List<String> words = Arrays.asList("apple", "bat", "cat", "banana", "dog", "elephant", "fox");
        Map<Integer, List<String>> result = words.stream().collect(Collectors.groupingBy(String::length));

        result.forEach((length, list) -> 
            System.out.println("Length " + length + " : " + list));
    }
}
