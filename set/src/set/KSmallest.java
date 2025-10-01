package set;

import java.util.*;

public class KSmallest {
    public static void main(String[] args) {
        TreeSet<Integer> set = new TreeSet<>(Arrays.asList(20, 5, 10, 30, 15, 25));
        int K = 3; 

        if (K <= 0 || K > set.size()) {
            System.out.println("Invalid K");
        } else {
            Iterator<Integer> it = set.iterator();
            System.out.println(K + " smallest elements:");
            for (int i = 0; i < K && it.hasNext(); i++) {
                System.out.print(it.next() + " ");
            }
        }
    }
}
