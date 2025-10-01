package map;

import java.util.*;

public class LinkedHashMapDemo {
    public static void main(String[] args) {
        // Create LinkedHashMap (insertion order preserved)
        LinkedHashMap<Integer, String> lhm = new LinkedHashMap<>();

        // 1. Associate specified value with specified key
        lhm.put(101, "Ram");
        lhm.put(105, "Sham");
        lhm.put(103, "Rima");
        lhm.put(107, "Riya");
        lhm.put(109, "Rekha");
        System.out.println("1. LinkedHashMap after adding elements: " + lhm);

        // 2. Copy LinkedHashMap content to another
        LinkedHashMap<Integer, String> copy = new LinkedHashMap<>(lhm);
        System.out.println("2. Copied LinkedHashMap: " + copy);

        // 3. Search for a key
        System.out.println("3. Contains key 105? " + lhm.containsKey(105));

        // 4. Search for a value
        System.out.println("4. Contains value 'Riya'? " + lhm.containsValue("Riya"));

        // 5. Get all keys
        System.out.println("5. All keys: " + lhm.keySet());

        // 6. Delete all elements
        LinkedHashMap<Integer, String> temp = new LinkedHashMap<>(lhm);
        temp.clear();
        System.out.println("6. After clearing map: " + temp);

        // 8. Get key-value mapping of greatest and least key
        List<Integer> keys = new ArrayList<>(lhm.keySet());
        Integer minKey = Collections.min(keys);
        Integer maxKey = Collections.max(keys);
        System.out.println("8. Least key entry: " + minKey + "=" + lhm.get(minKey));
        System.out.println("   Greatest key entry: " + maxKey + "=" + lhm.get(maxKey));

        // 9. Get first (lowest) key and last (highest) key in map
        System.out.println("9. First key: " + keys.get(0) + ", Last key: " + keys.get(keys.size() - 1));

        // 10. Reverse order view of keys
        List<Integer> reverseKeys = new ArrayList<>(lhm.keySet());
        Collections.reverse(reverseKeys);
        System.out.println("10. Reverse order keys: " + reverseKeys);
    }
}
