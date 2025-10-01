package comparable;

import java.util.*;

class Emp {
    private int id;
    private String name;
    private int salary;

    public Emp(int id, String name, int salary) {
        this.id = id;
        this.name = name;
        this.salary = salary;
    }

  
    public int getId() {
        return id;
    }
    public String getName() {
        return name;
    }
    public int getSalary() {
        return salary;
    }

    @Override
    public String toString() {
        return "Emp id=" + id + ", name=" + name + ", salary=" + salary + "\n";
    }
}


class NameSort implements Comparator<Emp> {
    @Override
    public int compare(Emp o1, Emp o2) {
        return o1.getName().compareTo(o2.getName());
    }
}


class IdSort implements Comparator<Emp> {
    @Override
    public int compare(Emp o1, Emp o2) {
        return Integer.compare(o1.getId(), o2.getId());
    }
}

// Comparator for Salary sorting
class SalarySort implements Comparator<Emp> {
    @Override
    public int compare(Emp o1, Emp o2) {
        return Integer.compare(o1.getSalary(), o2.getSalary());
    }
}

// Main Class
public class Demo {
    public static void main(String[] args) {
        List<Emp> obj = new ArrayList<>();
        obj.add(new Emp(100, "ram", 40000));
        obj.add(new Emp(110, "riya", 45000));
        obj.add(new Emp(101, "rama", 50000));
        obj.add(new Emp(105, "raj", 90000));
        obj.add(new Emp(102, "sham", 70000));

        System.out.println("Before sort: " + obj);


        Collections.sort(obj, new NameSort());
        System.out.println("After sort by Name: " + obj);

        Collections.sort(obj, new IdSort());
        System.out.println("After sort by Id: " + obj);

   
        Collections.sort(obj, new SalarySort());
        System.out.println("After sort by Salary: " + obj);
    }
}
