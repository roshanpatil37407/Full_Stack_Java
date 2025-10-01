package map;

import java.util.HashMap;
import java.util.Scanner;

public class Isomorphics {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);

        System.out.println("Enter 2 String");
        String s1 = sc.nextLine();
        String s2 = sc.nextLine();

        boolean res = true;
        HashMap<Character, Character> mp = new HashMap<>();

        if (s1.length() == s2.length()) {
            for (int i = 0; i < s1.length(); i++) {
                char ch = s1.charAt(i);

                if (mp.containsKey(ch)) {
                    Character preval = mp.get(ch);

                    if (preval != s2.charAt(i)) {
                        res = false;
                        break;
                    }
                } else {
                    mp.put(ch, s2.charAt(i));
                }
            }
        } else {
            System.out.println("Strings are of different length, not isomorphic.");
            res = false;
        }

        System.out.println(res);
        sc.close();
    }
}
