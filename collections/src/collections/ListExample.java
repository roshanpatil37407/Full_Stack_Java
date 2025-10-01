package collections;

import java.util.*;

public class ListExample {
    public static void main(String[] args) {
        List<String> names = new ArrayList<>();

        names.add("Ravi");
        names.add("Amit");
        names.add("Ravi"); 
        names.add("Vijay");

        System.out.println("List: " + names);
        System.out.println("First index : " + names.get(0));

        names.remove(2); 
        names.set(1, "Suresh"); 
        System.out.println("Updated List: " + names);
    }
}

