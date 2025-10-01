package queue;

import java.util.ArrayDeque;
import java.util.Deque;

public class DequeDemo {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Deque<Integer> num=new ArrayDeque<Integer>();
		
		num.add(10);
		num.addLast(20);
		num.addFirst(30);
		num.offer(50);
		num.offerFirst(40);
		num.offerLast(90);
		System.out.println(num);
		
		System.out.println("peek : "+num.peek());
		System.out.println("peek first :"+num.peekFirst());
		System.out.println("peek last :"+num.peekLast());
		
		System.out.println("poll : "+num.poll());
		System.out.println("poll first :"+num.pollFirst());
		System.out.println("poll last :"+num.pollLast());
		
		System.out.println("size : "+num.size());
		System.out.println("elements :"+num.element());
		System.out.println("pop :"+num.pop());
         
		System.out.println("contains : "+num.contains(50));
		System.out.println(num);
		
		
		
		
	}

}
