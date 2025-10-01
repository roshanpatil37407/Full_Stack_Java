package comparable;

import java.util.*;

class Employee implements Comparable<Employee> {
    private String name;
    private int id;

    public Employee(String name, int id) {
        this.name = name;
        this.id = id;
    }

    public String getName() { return name; }
    public int getId() { return id; }

    @Override
    public int compareTo(Employee other) {
        return other.name.compareTo(this.name);
    }

    @Override
    public String toString() {
        return "Employee: " + name + " ID: " + id + "";
    }
}

public class ReverseDemo {
    public static void main(String[] args) {
        ArrayList<Employee> list = new ArrayList<>();
        list.add(new Employee("ram", 20));
        list.add(new Employee("sham", 21));
        list.add(new Employee("riya", 22));
        list.add(new Employee("gita", 300));
        list.add(new Employee("sita", 23));

        Collections.sort(list);

        System.out.println("Employees Sorted by Name :");
        for (Employee e : list) {
            System.out.println(e);
        }
    }
}
