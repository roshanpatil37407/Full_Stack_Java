package queue;

import java.util.*;

public class Main {
    public static void main(String[] args) {
        int[] arr = {1, 3, -1, -3, 5, 3, 6, 7};
        int k = 3;
        List<Integer> result = max(arr, k);
        System.out.println("Maximum : " + result);
    }
    static List<Integer> max(int[] nums, int k) {
        List<Integer> res = new ArrayList<>();
        ArrayDeque<Integer> dq = new ArrayDeque<>(); 
        for (int i = 0; i < nums.length; i++) {
            while (!dq.isEmpty() && dq.peekFirst() <= i - k) {
                dq.pollFirst();
            }
            while (!dq.isEmpty() && nums[dq.peekLast()] < nums[i]) {
                dq.pollLast();
            }
            dq.offerLast(i);
            if (i >= k - 1) {
                res.add(nums[dq.peekFirst()]);
            }
        }
        return res;
    }
}

