package collections;

import java.util.ArrayList;
import java.util.Collection;

public class Main {
    public static void main(String[] args) {
       
        Collection<String> fruits = new ArrayList<>();
        fruits.add("Apple");
        fruits.add("Banana");
        fruits.add("Orange");
        fruits.add("Mango");
        fruits.add("Grapes");
        fruits.add("Watermelon");

       
        System.out.println("All fruits: " + fruits);

      
        fruits.remove("Banana");
        System.out.println("After removing Banana: " + fruits);

        
        System.out.println("Contains Mango? " + fruits.contains("Mango"));

        
        System.out.println("Total fruits: " + fruits.size());

        
        System.out.println("Is collection empty? " + fruits.isEmpty());

      
        System.out.println("Fruits list:");
        for (String fruit : fruits) {
            System.out.println("- " + fruit);
        }

      
        fruits.clear();
        System.out.println("After clearing: " + fruits);
        System.out.println("Is collection empty now? " + fruits.isEmpty());
    }
}
