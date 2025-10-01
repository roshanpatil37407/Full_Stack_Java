package collections;
import java.util.*;

public class VectorEx {
		public static void main(String[] args) {
		   Vector name=new Vector<>();
		   name.add("prem");
		   name.add("aniket");
		   name.add("avinash");
		   name.add("prem");
		   
		   System.out.println(name.get(0));
		   
		   name.set(0,"roshan");
		   System.out.println(name);
		   
		   name.remove("prem");
		   System.out.println(name);
		   
		   System.out.println(name.size());
		   
		    System.out.println(name.capacity());
		     
		}
	}