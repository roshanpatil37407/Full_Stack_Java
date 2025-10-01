package queue;
import java.util.*;
public class PalindromeCheck {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		String str = "madam";
        ArrayDeque<Character> dq = new ArrayDeque<>();
          for(char c :str.toCharArray()) {
        	  dq.add(c);
          }
          
          boolean isPalindrome =true;
          while(dq.size()>1) {
        	  if(dq.removeFirst()!=dq.removeLast()) {
        		  isPalindrome =false;
        		  break;
        	  }

          }
          System.out.println(isPalindrome ? "Palindrome" : "Not Palindrome");
          
	}

}
