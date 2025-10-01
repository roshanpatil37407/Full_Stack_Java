package lamda_fun;
import java.util.*;
public class Even_lamda {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		List<Integer> num=Arrays.asList(1,2,8,9,5,7,6,4,3);
		List<Integer> even=new ArrayList<>();
		for(int n:num) {
			if(n%2==0) {
				even.add(n);
			}
		}
		System.out.println(even);

	}

}
