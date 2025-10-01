package streamAPI;
import java.util.*;

public class Demoex {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		String str="roshan";
		
		str=str.toLowerCase().replaceAll("\\s+", "");
		Deque<Character> q=new ArrayDeque<>();
		
		for(char ch : str.toCharArray()) {
			q.addLast(ch);
		}
		boolean ispal=true;
		while(q.size()>1) {
			if(q.removeFirst() !=q.removeLast()) {
				ispal=false;
				break;
			}
		}
		if(ispal) {
			System.out.println("palindrome");
		}
		else {
			System.out.println("not palindrome");
		}

	}

}
