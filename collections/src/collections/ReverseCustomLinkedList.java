package collections;
import java.util.*;

class Nodes {
    String data;
    Nodes next;
    Nodes(String data) { this.data = data; }
}

public class ReverseCustomLinkedList {
    public static void main(String[] args) {
        Nodes head = new Nodes("Red");
        head.next = new Nodes("Green");
        head.next.next = new Nodes("Blue");

        // Reverse
        Nodes prev = null, curr = head;
        while (curr != null) {
            Nodes next = curr.next;
            curr.next = prev;
            prev = curr;
            curr = next;
        }
        head = prev;

        // Print reversed list
        for (Nodes temp = head; temp != null; temp = temp.next)
            System.out.println(temp.data);
    }
}
