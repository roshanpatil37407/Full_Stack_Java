package set;
import java.util.*;
public class LinkedhashsetDemo {

	public static void main(String[] args) {
		LinkedHashSet<Integer> num=new LinkedHashSet<Integer>();
		num.add(100);
		num.add(250);
		num.add(520);
		num.add(100);
		num.add(840);
		num.add(890);
		
		System.out.println(num);
		
		num.remove(100);
		
		System.out.println("after remove" + num);
		
		Iterator it=num.iterator();
		while(it.hasNext()) {
			System.out.println(it.next());
		}

	}

}
