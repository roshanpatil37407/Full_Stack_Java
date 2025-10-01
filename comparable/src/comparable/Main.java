package comparable;

import java.util.*;

class Person implements Comparable<Person> {

    private String name;
    private int age;
    private double height;

    public Person(String name, int age, double height) {
        this.name = name;
        this.age = age;
        this.height = height;
    }

    // Getters and Setters
    public String getName() { return name; }
    public void setName(String name) { this.name = name; }

    public int getAge() { return age; }
    public void setAge(int age) { this.age = age; }

    public double getHeight() { return height; }
    public void setHeight(double height) { this.height = height; }

    @Override
    public int compareTo(Person o) {
        // Sort by age (ascending)
        return Integer.compare(this.age, o.age);
    }

    @Override
    public String toString() {
        return "Person [name=" + name + ", age=" + age + ", height=" + height + "]";
    }
}

public class Main {
    public static void main(String[] args) {
        ArrayList<Person> list = new ArrayList<>();

        list.add(new Person("ram", 20, 5.7));
        list.add(new Person("sham", 21, 5.7));
        list.add(new Person("riya", 22, 3.7));
        list.add(new Person("gita", 30, 4.7));  // corrected from 300 to 30
        list.add(new Person("sita", 23, 5.1));

        System.out.println("Before Sorting:");
        for (Person p : list) {
            System.out.println(p);
        }

        Collections.sort(list); // uses compareTo()

        System.out.println("\nAfter Sorting by Age:");
        for (Person p : list) {
            System.out.println(p);
        }
    }
}
