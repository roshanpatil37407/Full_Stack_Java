package queue;

import java.util.*;

public class LastNElements {
    public static void main(String[] args) {
        int n = 3;
        ArrayDeque<Integer> dq = new ArrayDeque<>();

        for (int i = 1; i <= 7; i++) {
            if (dq.size() == n) 
            dq.pollFirst();
            dq.offerLast(i);
            System.out.println( i + ": " + dq);
        }
    }
}

