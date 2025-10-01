package streamAPI;
import java.util.*;
import java.util.stream.Collectors;

public class StreamapiDemo {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		ArrayList<Integer > ob=new ArrayList(Arrays.asList(4,5,6,2,3,1,8,9,5,7));
		List<Integer> li=ob.stream().collect(Collectors.toList());
		
		System.out.println(ob);
		System.out.println(li.stream().map(i->i*5).collect(Collectors.toList()));
		System.out.println(li);
		System.out.println(ob.stream().filter(i->i%2==0).collect(Collectors.toList()));
		

	}

}
