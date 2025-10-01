package map;

import java.util.Hashtable;

public class HashTableDemo {
    public static void main(String[] args) {
        Hashtable<Integer, String> students = new Hashtable<>();

        students.put(1, "Ravi");
        students.put(2, "Sita");
        students.put(3, "Amit");
        students.put(4, "Pooja");
        students.put(5, "Rahul");

        System.out.println("Students: " + students);
    }
}
