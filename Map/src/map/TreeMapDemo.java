package map;


import java.util.*;

public class TreeMapDemo {
    public static void main(String[] args) {
        // Create a TreeMap
        TreeMap<Integer, String> map = new TreeMap<>();

        // 1. Associate specified value with specified key
        map.put(101, "Ram");
        map.put(105, "Sham");
        map.put(103, "Rima");
        map.put(107, "Riya");
        map.put(109, "Rekha");
        System.out.println("1. TreeMap after adding elements: " + map);

        // 2. Copy TreeMap's content to another TreeMap
        TreeMap<Integer, String> copyMap = new TreeMap<>(map);
        System.out.println("2. Copied TreeMap: " + copyMap);

        // 3. Search for a key
        System.out.println("3. Contains key 105? " + map.containsKey(105));

        // 4. Search for a value
        System.out.println("4. Contains value 'Rima'? " + map.containsValue("Rima"));

        // 5. Get all keys
        System.out.println("5. All keys: " + map.keySet());

        // 6. Delete all elements
        TreeMap<Integer, String> temp = new TreeMap<>(map);
        temp.clear();
        System.out.println("6. After clearing map: " + temp);

        // 7. Sort keys using comparator (descending order)
        TreeMap<Integer, String> descMap = new TreeMap<>(Collections.reverseOrder());
        descMap.putAll(map);
        System.out.println("7. Keys sorted in reverse order: " + descMap);

        // 8. Key-value mapping of greatest & least key
        System.out.println("8. First entry: " + map.firstEntry() + ", Last entry: " + map.lastEntry());

        // 9. First (lowest) key and last (highest) key
        System.out.println("9. First key: " + map.firstKey() + ", Last key: " + map.lastKey());

        // 10. Reverse order view of keys
        System.out.println("10. Reverse key view: " + map.descendingKeySet());

        // 11. Floor entry (≤ key)
        System.out.println("11. Floor entry for 106: " + map.floorEntry(106));

        // 12. Floor key (≤ key)
        System.out.println("12. Floor key for 106: " + map.floorKey(106));

        // 13. Portion with keys < given key
        System.out.println("13. HeadMap (<107): " + map.headMap(107));

        // 14. Portion with keys ≤ given key
        System.out.println("14. HeadMap (≤107): " + map.headMap(107, true));

        // 15. Least key strictly greater
        System.out.println("15. Higher key than 105: " + map.higherKey(105));

        // 16. Lower entry (< key)
        System.out.println("16. Lower entry for 105: " + map.lowerEntry(105));

        // 17. Lower key (< key)
        System.out.println("17. Lower key for 105: " + map.lowerKey(105));

        // 18. NavigableSet view of keys
        System.out.println("18. NavigableSet of keys: " + map.navigableKeySet());

        // 19. Remove and get least key
        TreeMap<Integer, String> clone1 = new TreeMap<>(map);
        System.out.println("19. Poll first entry: " + clone1.pollFirstEntry());
        System.out.println("   Remaining map: " + clone1);

        // 20. Remove and get greatest key
        TreeMap<Integer, String> clone2 = new TreeMap<>(map);
        System.out.println("20. Poll last entry: " + clone2.pollLastEntry());
        System.out.println("   Remaining map: " + clone2);

        // 21. Portion of map between two keys (inclusive start, exclusive end)
        System.out.println("21. SubMap(103 to 109): " + map.subMap(103, 109));

        // 22. Portion of map between two keys with inclusive/exclusive options
        System.out.println("22. SubMap(103 true, 109 true): " + map.subMap(103, true, 109, true));

        // 23. Portion ≥ given key
        System.out.println("23. TailMap(105): " + map.tailMap(105));

        // 24. Portion > given key
        System.out.println("24. TailMap(105, false): " + map.tailMap(105, false));

        // 25. Ceiling entry (≥ key)
        System.out.println("25. Ceiling entry for 106: " + map.ceilingEntry(106));

        // 26. Ceiling key (≥ key)
        System.out.println("26. Ceiling key for 106: " + map.ceilingKey(106));
    }
}
