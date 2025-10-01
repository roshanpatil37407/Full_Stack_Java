package set;

import java.util.*;

public class CommonElements {
    public static void main(String[] args) {
        TreeSet<Integer> set1 = new TreeSet<>(Arrays.asList(1, 2, 3, 4, 5));
        TreeSet<Integer> set2 = new TreeSet<>(Arrays.asList(3, 4, 5, 6, 7));

        TreeSet<Integer> common = new TreeSet<>(set1);
        common.retainAll(set2); // intersection

        System.out.println("Common elements: " + common);
    }
}
