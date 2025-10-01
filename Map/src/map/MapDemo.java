package map;

import java.util.*;

public class MapDemo {
    public static void main(String[] args) {
 
        HashMap<Integer, String> map = new HashMap<>();
        map.put(1, "Roshan");
        map.put(2, "Bhupendra");
        map.put(3, "Amit");

        System.out.println("Initial Map: " + map);

        
        map.put(4, "Sagar");
        System.out.println("1. After adding : " + map);

        
        System.out.println("2. Size of map: " + map.size());

        
        HashMap<Integer, String> copyMap = new HashMap<>();
        copyMap.putAll(map);
        System.out.println("3. Copied Map: " + copyMap);

        
        HashMap<Integer, String> tempMap = new HashMap<>(map);
        tempMap.clear();
        System.out.println("4. After clear: " + tempMap);

       
        System.out.println("5. Is original map empty" + map.isEmpty());

        
        HashMap<Integer, String> shallowCopy = (HashMap<Integer, String>) map.clone();
        System.out.println("6. Shallow Copy: " + shallowCopy);

        System.out.println("7. Contains key  " + map.containsKey(2));

        System.out.println("8. Contains value  " + map.containsValue("Amit"));

       
        Set<Map.Entry<Integer, String>> entries = map.entrySet();
        System.out.println("9. Set view of mappings: " + entries);

       
        System.out.println("10. Value for key 1: " + map.get(1));

        
        Set<Integer> keys = map.keySet();
        System.out.println("11. Keys: " + keys);

        
        Collection<String> values = map.values();
        System.out.println("12. Values: " + values);
    }
}
