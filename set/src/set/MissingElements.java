package set;

import java.util.*;

public class MissingElements {
    public static void main(String[] args) {
        TreeSet<Integer> set = new TreeSet<>(Arrays.asList(1, 2, 5, 7, 10, 15, 20));

        int start = 1, end = 20;
        System.out.println("Missing elements between " + start + " and " + end + ":");
        for (int i = start; i <= end; i++) {
            if (!set.contains(i)) {
                System.out.print(i + " ");
            }
        }
    }
}
