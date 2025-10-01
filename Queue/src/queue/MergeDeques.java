package queue;

import java.util.ArrayDeque;

public class MergeDeques {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		
		ArrayDeque <Integer> num=new ArrayDeque<>();
		
		num.add(10);
		num.add(40);
		num.add(50);
		
		System.out.println(num);
		
       ArrayDeque <Integer> num1=new ArrayDeque<>();
		
		num1.add(100);
		num1.add(400);
		num1.add(500);
		
		System.out.println(num1);
		
		num.addAll(num1);
		System.out.println(num);		
		
		
		

	}

}
