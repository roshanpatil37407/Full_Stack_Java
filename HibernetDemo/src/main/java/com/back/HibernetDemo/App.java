package com.back.HibernetDemo;

import java.util.Scanner;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

public class App {
    public static void main(String[] args) {
      

       
        Configuration cfg = new Configuration().configure("hibernate.cfg.xml");
        SessionFactory factory = cfg.buildSessionFactory();
        Session session = factory.openSession();

        Transaction tx = session.beginTransaction();

        EMP e = new EMP();
        Scanner sc = new Scanner(System.in);

        System.out.print("Enter ID: ");
        e.setId(sc.nextInt());
        System.out.print("Enter Name: ");
        e.setName(sc.next());
        System.out.print("Enter Email: ");
        e.setEmail(sc.next());

        session.save(e);

        tx.commit();
        session.close();
        factory.close();
        sc.close();

        System.out.println(" Data inserted successfully!");
    }
}
