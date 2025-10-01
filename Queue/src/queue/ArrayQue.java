package queue;

import java.util.ArrayDeque;

public class ArrayQue {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		ArrayDeque<Integer> num=new ArrayDeque<>();
		num.add(10);
		num.add(20);
		num.add(30);
		num.add(40);
		num.addFirst(1);
		num.addLast(100);
		
		System.out.println(num);
		
//		System.out.println(num.removeFirst());
//		System.out.println(num.removeLast());
//		System.out.println(num);
		
		num.reversed();
		System.out.println(num);
		
		
		
	}

}
