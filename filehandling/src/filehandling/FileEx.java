package filehandling;
import java.io.*;
import java.util.*;

public class FileEx {
    public static void main(String[] args) {
        String filePath = "C:\\Users\\Admin\\Desktop\\New folder (3)\\data.txt";

        
        try (FileWriter writer = new FileWriter(filePath)) {
            writer.write("java is a high level , open source programming langauge .");
            System.out.println("Sentence written to file.");
        } catch (IOException e) {
            e.printStackTrace();
        }

        try {
            File file = new File(filePath);
            Scanner sc = new Scanner(file);

            StringBuilder content = new StringBuilder();
            while (sc.hasNextLine()) {
                content.append(sc.nextLine()).append(" ");
            }
            sc.close();

            String text = content.toString().toLowerCase();

            // 1) Words starting with vowel
            String[] words = text.split("[\\s\\p{Punct}]+"); // split by space/punctuation
            int vowelCount = 0;
            for (String w : words) {
                if (w.matches("^[aeiou].*")) { // regex: starts with vowel
                    vowelCount++;
                }
            }
            System.out.println("1) Words starting with vowel: " + vowelCount);

            // 2) Frequency of characters
            Map<Character, Integer> charFreq = new HashMap<>();
            for (char c : text.toCharArray()) {
                if (Character.isLetter(c)) {
                    charFreq.put(c, charFreq.getOrDefault(c, 0) + 1);
                }
            }
            System.out.println("2) Character frequency: " + charFreq);

            // 3) Most repeated words
            Map<String, Integer> wordFreq = new HashMap<>();
            for (String w : words) {
                if (!w.isEmpty()) {
                    wordFreq.put(w, wordFreq.getOrDefault(w, 0) + 1);
                }
            }

            int max = Collections.max(wordFreq.values());
            System.out.print("3) Most repeated words: ");
            for (Map.Entry<String, Integer> entry : wordFreq.entrySet()) {
                if (entry.getValue() == max) {
                    System.out.print(entry.getKey() + " ");
                }
            }
            System.out.println("\n(Max frequency = " + max + ")");
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
