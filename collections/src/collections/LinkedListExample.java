package collections;
import java.util.*;
public class LinkedListExample {
	public static void main(String[] args) {
		LinkedList<String> colors = new LinkedList<>();
        colors.add("Red");
        colors.add("Green");
        colors.add("Blue");

        colors.addFirst("Black");
        colors.addLast("White");

        System.out.println("Colors: " + colors);
        System.out.println("First Colors: " + colors.getFirst());
        System.out.println("Last Colors: " + colors.getLast());
        
        colors.removeFirst();
        colors.removeLast();
        
        System.out.println("Colors: " + colors);
        
        colors.remove("Red");
        
        System.out.println("Colors: " + colors);

		
	}
}
