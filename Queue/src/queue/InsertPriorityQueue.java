package queue;

import java.util.*;

public class InsertPriorityQueue {
    public static void main(String[] args) {
        PriorityQueue<Integer> pq = new PriorityQueue<>();
        pq.add(10);
        pq.add(20);
        pq.add(5);
        System.out.println( pq);
        int newElement = 15;
        pq.add(newElement);
        System.out.println( pq);
    }
}
