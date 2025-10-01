package com.model;

public class Student {

    private int Rollno;
    private String name;
    private String password;
    private String city;
    private String bdate;
    private String email;
    private String phoneno;

    public Student() {
        super();
    }

    public Student(int rollno, String name, String password, String city, String bdate, String email, String phoneno) {
        super();
        Rollno = rollno;
        this.name = name;
        this.password = password;
        this.city = city;
        this.bdate = bdate;
        this.email = email;
        this.phoneno = phoneno;
    }

    // Getters and Setters
    public int getRollno() { return Rollno; }
    public void setRollno(int rollno) { Rollno = rollno; }

    public String getName() { return name; }
    public void setName(String name) { this.name = name; }

    public String getPassword() { return password; }
    public void setPassword(String password) { this.password = password; }

    public String getCity() { return city; }
    public void setCity(String city) { this.city = city; }

    public String getBdate() { return bdate; }
    public void setBdate(String bdate) { this.bdate = bdate; }

    public String getEmail() { return email; }
    public void setEmail(String email) { this.email = email; }

    public String getPhoneno() { return phoneno; }
    public void setPhoneno(String phoneno) { this.phoneno = phoneno; }
}
