package set;
import java.util.*;

public class SecondLargest {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		  TreeSet<Integer> set = new TreeSet<>(Arrays.asList(10, 5, 20, 15, 8));
		  if(set.size()<2) {
			  System.out.println("not founds");
		  }else {
			  int last=set.last();
			  int secondLats=set.lower(last);
			  
			  System.out.println(secondLats);
			  
		  }

	}

}
