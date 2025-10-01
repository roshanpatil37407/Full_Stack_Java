package map;




import java.util.Hashtable;
import java.util.Map;

public class htIterator {
    public static void main(String[] args) {
        Hashtable<Integer, String> table = new Hashtable<>();
        table.put(1, "One");
        table.put(2, "Two");
        table.put(3, "Three");

       
        for (Integer key : table.keySet()) {
            System.out.println(key + " -> " + table.get(key));
        }

       
        for (Map.Entry<Integer, String> entry : table.entrySet()) {
            System.out.println(entry.getKey() + " -> " + entry.getValue());
        }
    }
}
