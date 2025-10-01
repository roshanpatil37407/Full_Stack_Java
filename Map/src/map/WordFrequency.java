package map;

import java.util.HashMap;
import java.util.Map;
import java.util.Scanner;

public class WordFrequency {
    
    public static void countWordFrequency(String sentence) {
       
        String[] words = sentence.split("\\s+");

        HashMap<String, Integer> freqMap = new HashMap<>();

      
        for (String word : words) {
            word = word.toLowerCase(); 
            freqMap.put(word, freqMap.getOrDefault(word, 0) + 1);
        }

        
        System.out.println("Word Frequencies: " + freqMap);
    }

    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);

        System.out.println("Enter a sentence: ");
        String sentence = sc.nextLine();

        countWordFrequency(sentence);

        sc.close();
    }
}
