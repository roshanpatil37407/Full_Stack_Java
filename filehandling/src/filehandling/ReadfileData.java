
package filehandling;


import java.util.*;
import java.io.*;

public class ReadfileData {
    public static void main(String[] args) {
        try {
            File ob = new File("C:\\Users\\Admin\\Desktop\\New folder (3)\\example.txt");
            StringBuffer sb = new StringBuffer();
            
            Scanner sc = new Scanner(ob);
            while (sc.hasNextLine()) {
                sb.append(sc.nextLine() + "\n");  
            }
            
            System.out.println(sb.toString());  
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
