package map;

import java.util.HashMap;
import java.util.Map;
import java.util.Scanner;

public class Duplicate {
    
    public static void findDuplicateCharacters(String str) {
        HashMap<Character, Integer> freqMap = new HashMap<>();

        for (char ch : str.toCharArray()) {
            if (freqMap.containsKey(ch)) {
                freqMap.put(ch, freqMap.get(ch) + 1);
            } else {
                freqMap.put(ch, 1);
            }
        }

        System.out.print("Duplicate characters: ");
        boolean found = false;

        for (Map.Entry<Character, Integer> entry : freqMap.entrySet()) {
            if (entry.getValue() > 1) {
                System.out.print(entry.getKey() + " ");
                found = true;
            }
        }

        if (!found) {
            System.out.print("None");
        }
    }

    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);

        System.out.println("Enter a string: ");
        String str = sc.nextLine();

        findDuplicateCharacters(str);

        sc.close();
    }
}
