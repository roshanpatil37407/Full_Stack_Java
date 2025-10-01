package map;

import java.util.Hashtable;

public class ht {
    public static void main(String[] args) {
        Hashtable<Integer, String> table1 = new Hashtable<>();
        table1.put(1, "A");
        table1.put(2, "B");

        Hashtable<Integer, String> table2 = new Hashtable<>();
        table2.put(2, "X");
        table2.put(3, "C");

        for (Integer key : table2.keySet()) {
            table1.put(key, table2.get(key)); 
        }

        System.out.println(table1);
    }
}
