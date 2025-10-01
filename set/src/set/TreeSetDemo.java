package set;

import java.util.*;

public class TreeSetDemo {
    public static void main(String[] args) {
        
        TreeSet<String> ob = new TreeSet<String>();

        ob.add("red");
        ob.add("yellow");
        ob.add("Pink");
        ob.add("White");
        ob.add("back");
        ob.add("grey");
        ob.add("blue");
        ob.add("aqua");
        ob.add("orange");
       
//       System.out.println("colors : " + ob);
        Iterator it=ob.iterator();
        while(it.hasNext()) {
        	System.out.println(it.next());
        }
    }
}
