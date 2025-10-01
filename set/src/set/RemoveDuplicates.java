package set;
 import java.util.*;
public class RemoveDuplicates {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		int arr[]= {10,20,30,50,10,20,30};
		
		LinkedHashSet<Integer> set=new LinkedHashSet<Integer>();
		for(int num : arr) {
			set.add(num);
			
		}
		System.out.println(set);

	}

}
