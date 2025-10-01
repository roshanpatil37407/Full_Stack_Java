package set;

import java.util.TreeSet;

public class UniqueWords {
    public static void main(String[] args) {
        String paragraph = "Java is a powerful programming language.";

        String[] words = paragraph.toLowerCase().split("\\W+"); 
        TreeSet<String> uniqueWords = new TreeSet<>();

        for (String word : words) {
            if (!word.isEmpty()) {
                uniqueWords.add(word);
            }
        }

        System.out.println("Unique words in alphabetical order:");
        for (String w : uniqueWords) {
            System.out.println(w);
        }
    }
}