package queue;
import java.util.*;

public class ReverseWithArrayDeque {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
      List<Integer> n=Arrays.asList(10,20,30,40,90);
      
      ArrayDeque<Integer> ad=new ArrayDeque<>();
      
      for(int num : n) {
    	  ad.push(num);
      }
      List<Integer> reverseList=new ArrayList<>();
      while(!ad.isEmpty()) {
    	  reverseList.add(ad.pop());
      }
      System.out.println("Original List: " + n);
      System.out.println("Reversed List: " + reverseList);
	}

}
