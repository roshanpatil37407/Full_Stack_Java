package com.back.HibernetDemo;

import java.util.Scanner;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

public class GetEmpDetails {

	public static void main(String[] args) {

		Configuration cfg = new Configuration().configure("hibernate.cfg.xml");
		SessionFactory factory = cfg.buildSessionFactory();
		Session session = factory.openSession();

		Scanner sc = new Scanner(System.in);
		System.out.print("Enter Employee ID : ");
		int empId = sc.nextInt();

		EMP e = session.get(EMP.class, empId);

		System.out.println("ID    : " + e.getId());
		System.out.println("Name  : " + e.getName());
		System.out.println("Email : " + e.getEmail());

		sc.close();
		session.close();
		factory.close();
	}
}
