package streamAPI;

import java.util.*;
import java.util.stream.Collectors;

public class streamfun {





    public static void main(String[] args) {
        
       
        List<Integer> num = Arrays.asList(1, 2, 3, 4, 5, 6, 7, 8, 9, 10);
        
        System.out.println(num);
        List<Integer> en = num.stream().filter(n -> n % 2 == 0).collect(Collectors.toList());
        System.out.println("Even Numbers: " + en);


        List<String> words = Arrays.asList("apple", "mango", "kiwi", "banana", "grapes");
        List<String> sl = words.stream().sorted((s1, s2) -> Integer.compare(s1.length(), s2.length())).collect(Collectors.toList());
        System.out.println("Strings Sorted  : " + sl);

  
        List<String> uc = words.stream().map(s -> s.toUpperCase()).collect(Collectors.toList());
        System.out.println("Strings in Uppercase: " + uc);

        
        double average = num.stream().mapToInt(n -> n).average() .orElse(0.0);
        System.out.println("Average : " + average);

       
        List<String> fl = words.stream().filter(s -> s.length() >= 5).collect(Collectors.toList());
        System.out.println("Strings with Length  " + fl);

        
        List<Integer> sq = num.stream().map(n -> n * n) .collect(Collectors.toList());
        System.out.println("Squares : " + sq);
        
        
        
        
  
                List<String> words1 = Arrays.asList("Apple", "Banana", "Avocado", "Mango", "Apricot", "Orange");
                List<String> result = words1.stream()
                                            .filter(s -> s.startsWith("A"))
                                            .collect(Collectors.toList());
                System.out.println("7. Strings starting with 'A': " + result);

                // 8. Find Maximum Length String
                List<String> words2 = Arrays.asList("Roshan", "Bhupendra", "Java", "Programming", "Pune");
                String maxLengthString = words2.stream()
                                               .max((s1, s2) -> Integer.compare(s1.length(), s2.length()))
                                               .orElse("No String Found");
                System.out.println("8. String with maximum length: " + maxLengthString);

                // 9. Count Words with Length Greater Than 3
                List<String> words3 = Arrays.asList("Sun", "Moon", "Star", "Sky", "Clouds", "Sea");
                long count = words3.stream()
                                   .filter(s -> s.length() > 3)
                                   .count();
                System.out.println("9. Count of words with length > 3: " + count);

                // 10. Join Strings with a Separator
                List<String> words4 = Arrays.asList("Hello", "World", "Java", "Stream", "API");
                String joined = words4.stream()
                                      .collect(Collectors.joining(" - "));  // separator
                System.out.println("10. Joined string: " + joined);
            }
        }

        
        
   
