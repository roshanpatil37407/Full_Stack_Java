package set;
import java.util.*;

public class TreeSetFun {
	 public static void main(String[] args) {
	       
	        TreeSet<String> s1 = new TreeSet<String>();
	        s1.add("Red");
	        s1.add("Blue");
	        s1.add("Green");
	        s1.add("Yellow");
	        System.out.println("org : "+s1);
//	        System.out.println(s1.getFirst());
//
//	        System.out.println(s1.getLast());

	     
//	        TreeSet<String> s2 = new TreeSet<String>();
//	        s2.add("Black");
//	        s2.add("White");
//
//	        s2.addAll(s1);
//
//	        System.out.println("First TreeSet: " + s1);
//	        System.out.println("Second TreeSet : " + s2);
	        
	        
//	        // Reverse the list
//	        System.out.println("org : "+s1);
//	        List<String> list = new ArrayList<>(s1);
//
//	      
//	        Collections.reverse(list);
//	        System.out.println("reverse :"+list);
	        
	        
//	        
//	        clone
	        
	        TreeSet<String> set2 = (TreeSet<String>) s1.clone();

	        System.out.println("Cloned TreeSet: " + set2);
	        
	        

	        }

}
