package lamda_fun;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.function.Consumer;

public class ConsumerDemo {
    public static void main(String[] args) {

        
        Consumer<Integer> obj = (no) -> {
            System.out.println(" int : " + no);
        };
        obj.accept(12321);

        Consumer<String> obj1 = (str) -> {
            System.out.println(str);
        };
        obj1.accept("java programming..");

        ArrayList<String> al = new ArrayList<>(Arrays.asList("Rahul", "Aaditya", "Gayatri", "Rucha"));

        
        al.forEach(obj1);
    }
}
