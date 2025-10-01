package throwsex;
import java.io.*;
public class ThrowExample {

//	public static void main(String[] args) {
//		// TODO Auto-generated method stub
//	 int age = 15;
//
//      if(age <18) {
//    	  throw new ArithmeticException("you are not vote");
//      }
//      System.out.println("error");
//      
//	}
	 public static void readFile(String fn) throws IOException{
		 FileReader fr= new FileReader(fn);
		 BufferedReader br=new BufferedReader(fr);
		 System.out.println(br.readLine());
	 }
	 public static void main(String [] args) {
		 try {
			 readFile("data.txt");
		 }
		 catch(IOException e) {
			 System.out.println(e.getMessage());
		 }
	 }

}
