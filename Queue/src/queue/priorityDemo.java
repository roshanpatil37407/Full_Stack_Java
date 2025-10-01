package queue;

import java.util.Iterator;
import java.util.PriorityQueue;

public class priorityDemo {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		 PriorityQueue<String> colors=new PriorityQueue<>();
		colors.add("white");
		colors.add("black");
		colors.add("green");
		colors.add("orange");
		
		System.out.println(colors);
		
		
      PriorityQueue<String> color=new PriorityQueue<>();
		color.add("red");
		color.add("pink");
		color.add("yellow");
		System.out.println(color);
		
		
		colors.addAll(color);
		System.out.println(colors);
		
		
		
       
//		Iterator it=colors.iterator();
//		while(it.hasNext()) {
//			System.out.println(it.next());
//		}
		
	
		
		
	}

}
