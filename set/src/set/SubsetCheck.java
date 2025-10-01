package set;

import java.util.LinkedHashSet;

public class SubsetCheck {
    public static void main(String[] args) {
        LinkedHashSet<Integer> set1 = new LinkedHashSet<>();
        LinkedHashSet<Integer> set2 = new LinkedHashSet<>();

        set1.add(10); 
        set1.add(20);
        set2.add(10);
        set2.add(20); 
        set2.add(30);

        if (set2.containsAll(set1)) {
            System.out.println("Set1 is a subset of Set2");
        } else {
            System.out.println("Set1 is not a subset of Set2");
        }
    }
}
