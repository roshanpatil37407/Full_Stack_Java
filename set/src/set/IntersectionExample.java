package set;
import java.util.LinkedHashSet;

public class IntersectionExample {
    public static void main(String[] args) {
        LinkedHashSet<Integer> set1 = new LinkedHashSet<>();
        LinkedHashSet<Integer> set2 = new LinkedHashSet<>();

        set1.add(10); 
        set1.add(20);
        set1.add(30); 
        set1.add(40);
        
        set2.add(30);
        set2.add(40);
        set2.add(50);
        set2.add(60);

        set1.retainAll(set2); 
        System.out.println("Intersection: " + set1);
    }
}

