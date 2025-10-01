package streamAPI;

import java.util.*;
import java.util.stream.*;

import java.util.*;
import java.util.stream.*;

public class Main {
    public static void main(String[] args) {
        List<Integer> numbers = Arrays.asList(12, 45, 67, 23, 89, 34, 90, 11, 76);

        List<Integer> top = numbers.stream().sorted(Comparator.reverseOrder()).limit(3).collect(Collectors.toList());

        System.out.println("Top 3 largest numbers: " + top);
    }
}
