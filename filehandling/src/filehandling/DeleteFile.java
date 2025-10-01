package filehandling;

import java.io.File;
import java.util.Scanner;

public class DeleteFile {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
         try {
        	 
        	 Scanner sc = new Scanner(System.in);
             System.out.println("Enter text :");

             String text = sc.nextLine(); 
             
             File ob= new File("C:\\Users\\Admin\\Desktop\\New folder (3)");
             
             if(ob.delete()) {
            	 System.out.println("deleted ");
             }else {
            	 System.out.println(" error ");
             }
             
        	 
         }
         catch (Exception e) {
        	 
         }
	}

}
