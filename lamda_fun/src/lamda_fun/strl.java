package lamda_fun;

import java.util.function.Function;

public class strl {
    public static void main(String[] args) {
//        Function<String, Integer> strLength = s -> s.length();
//        System.out.println( strLength.apply("Roshan"));
//        
        Function<String, String> toUpper = s -> s.toUpperCase();
        System.out.println(toUpper.apply("roshan"));
        
        
    }
}
