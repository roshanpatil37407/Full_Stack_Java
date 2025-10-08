package com.tut.Hibernet;

import java.util.Scanner;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

public class App {
    public static void main(String[] args) {
       
        Configuration cfg = new Configuration();
        cfg.configure("hibernate.cfg.xml");
        SessionFactory factory = cfg.buildSessionFactory();
        Session session = factory.openSession();

        
        Transaction tx = session.beginTransaction();

        Scanner sc = new Scanner(System.in);
        System.out.println("Enter Id, Name, Email, City, State:");
        
        int id = sc.nextInt();
        String name = sc.next();
        String email = sc.next();
        String city = sc.next();
        String state = sc.next();

        Address ad = new Address(city, state);

      
        Student s = new Student(id, name, email, ad);

    
        session.save(s);

        tx.commit();
        session.close();
        factory.close();
        sc.close();

        System.out.println("✅ Data inserted successfully!");
    }
}
