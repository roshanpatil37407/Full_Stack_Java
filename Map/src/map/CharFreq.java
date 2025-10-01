package map;

import java.util.HashMap;
import java.util.Map.Entry;
import java.util.Scanner;

public class CharFreq {
    
    
    public static void FindCharFreq(String str) {
        HashMap<Character, Integer> mp = new HashMap<>();

       
        for (char ch : str.toCharArray()) {
            if (mp.containsKey(ch)) {
                int prevcount = mp.get(ch);
                mp.put(ch, prevcount + 1);
            } else {
                mp.put(ch, 1);
            }
        }

       
        for (Entry<Character, Integer> e : mp.entrySet()) {
            System.out.println(e.getKey() + " : " + e.getValue());
        }
    }

    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);

        System.out.println("Enter string :");
        String str = sc.nextLine();

        FindCharFreq(str);
        
        sc.close();
    }
}
