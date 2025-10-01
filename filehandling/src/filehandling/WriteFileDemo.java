package filehandling;

import java.io.FileWriter;
import java.io.IOException;
import java.util.Scanner;

public class WriteFileDemo {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        System.out.println("Enter text :");

        String text = sc.nextLine(); 

        try {
            FileWriter writer = new FileWriter("C:\\Users\\Admin\\Desktop\\New folder (3)\\example.txt");
            writer.write(text);
            writer.close();
            System.out.println("Successfully wrote to the file!");
        } catch (IOException e) {
            System.out.println("An error ");
            e.printStackTrace();
        }

        sc.close();
    }
}
