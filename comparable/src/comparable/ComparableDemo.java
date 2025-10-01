package comparable;

import java.util.ArrayList;
import java.util.Collections;

class Student implements Comparable<Student> {
    private int RollNo;
    private String Name;
    private String City;

    // Constructor
    public Student(int rollNo, String name, String city) {
        super();
        this.RollNo = rollNo;
        this.Name = name;
        this.City = city;
    }

    // Getters and Setters
    public int getRollNo() {
        return RollNo;
    }

    public void setRollNo(int rollNo) {
        this.RollNo = rollNo;
    }

    public String getName() {
        return Name;
    }

    public void setName(String name) {
        this.Name = name;
    }

    public String getCity() {
        return City;
    }

    public void setCity(String city) {
        this.City = city;
    }

   
    @Override
    public String toString() {
        return "RollNo=" + RollNo + ", Name=" + Name + ", City=" + City + "\n";
    }

 
    @Override
    public int compareTo(Student o) {
      
//         return this.getName().compareTo(o.getName());
    	
    	    if (this.getRollNo() == o.getRollNo()) {
    	        return 0;
    	    } else if (this.getRollNo() > o.getRollNo()) {
    	        return 1;
    	    } else {
    	        return -1;
    	    }
    	

    	

       
//        return o.getName().compareTo(this.getName());
    }
}

public class ComparableDemo {
    public static void main(String[] args) {
        ArrayList<Student> ob = new ArrayList<>();

        Student s1 = new Student(1, "Akash", "Pune");
        Student s2 = new Student(3, "Sunil", "Mumbai");
        Student s3 = new Student(6, "Renuka", "Kolhapur");
        Student s4 = new Student(2, "Siddesh", "Nashik");
        Student s5 = new Student(7, "Tejas", "Dhule");

        ob.add(s1);
        ob.add(s2);
        ob.add(s3);
        ob.add(s4);
        ob.add(s5);
        ob.add(new Student(5, "Datta", "Indore"));

        System.out.println("Before sort : \n" + ob);

        Collections.sort(ob);

        System.out.println("After sort : \n" + ob);
    }
}
