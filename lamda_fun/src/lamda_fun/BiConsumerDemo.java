package lamda_fun;


import java.util.*;
import java.util.function.BiConsumer;

public class BiConsumerDemo implements BiConsumer<String,Integer> {
	@Override
	public void accept(String t, Integer u) {
		// TODO Auto-generated method stub
		System.out.println("First:"+t);
		System.out.println("First:"+u);
		
	}
	public static void main(String[] args) {
		// TODO Auto-generated method stub
		
		BiConsumerDemo ob=new BiConsumerDemo();
		ob.accept("Apple", 100);
		
		BiConsumer<Integer,String>obj=(n,str)->{
			System.out.println("First is number:"+n);
			System.out.println("Second is String:"+str);
		};
		obj.accept(2771, "Roshu");
		
		HashMap<Integer,Double>mp=new HashMap<>();
		
		mp.put(10, 10.22);
		mp.put(20, 20.32);
		mp.put(30, 30.52);
		mp.put(40, 40.62);
		mp.put(50, 50.72);
		
		mp.forEach((key , value)->{
			System.out.println(key+":"+value);
		});
	}

	

}
