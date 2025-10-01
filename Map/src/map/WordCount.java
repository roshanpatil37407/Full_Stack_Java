package map;

import java.util.HashMap;
import java.util.Map.Entry;
import java.util.Scanner;

public class WordCount {


    public static void FindWordFreq(String str) {
        HashMap<String, Integer> mp = new HashMap<>();

        
        String[] words = str.split("\\s+");

        for (String word : words) {
            word = word.toLowerCase(); 
            if (mp.containsKey(word)) {
                mp.put(word, mp.get(word) + 1);
            } else {
                mp.put(word, 1);
            }
        }

      
        for (Entry<String, Integer> e : mp.entrySet()) {
            System.out.println(e.getKey() + " : " + e.getValue());
        }
    }

    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);

        System.out.println("Enter string :");
        String str = sc.nextLine();

        FindWordFreq(str);

        sc.close();
    }
}
