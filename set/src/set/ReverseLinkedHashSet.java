package set;

import java.util.LinkedHashSet;
import java.util.ArrayList;
import java.util.Collections;

public class ReverseLinkedHashSet {
    public static void main(String[] args) {
        LinkedHashSet<Integer> set = new LinkedHashSet<>();
        set.add(1);
        set.add(2);
        set.add(3); 
        set.add(4);

        ArrayList<Integer> list = new ArrayList<>(set);
        Collections.reverse(list);

        System.out.println("Reversed order: " + list);
    }
}
