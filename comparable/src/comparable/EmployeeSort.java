package comparable;

import java.util.*;

class Employees {
    String name, department;
    double salary;

    public Employees(String name, double salary, String department) {
        this.name = name;
        this.salary = salary;
        this.department = department;
    }

    @Override
    public String toString() {
        return name + " - " + department + " - " + salary +"\n";
    }
}

class SalaryComparator implements Comparator<Employees> {
    public int compare(Employees e1, Employees e2) {
        return Double.compare(e2.salary, e1.salary); 
    }
}

public class EmployeeSort {
    public static void main(String[] args) {
        List<Employees> employees = Arrays.asList(
            new Employees("Roshan", 55000, "IT"),
            new Employees("Bhupendra", 70000, "HR"),
            new Employees("Anjali", 60000, "Finance")
        );

        Collections.sort(employees, new SalaryComparator());

        System.out.println(employees);
    }
}
