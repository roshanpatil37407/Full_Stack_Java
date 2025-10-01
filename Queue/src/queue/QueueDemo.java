package queue;

import java.util.*;

public class QueueDemo {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Queue<Integer> ob=new ArrayDeque<Integer>();
		ob.add(10);
		ob.add(20);
		ob.add(30);
		ob.add(40);
		ob.offer(50);
		ob.offer(60);
		ob.offer(70);
		ob.offer(80);
		System.out.println(ob);
		System.out.println("PEEK : "+ob.peek());
		System.out.println("Elements :"+ob.element());
		System.out.println("Poll : "+ob.poll());
		System.out.println("Remove : "+ob.remove());
		System.out.println(ob);
		
   
	}

}
