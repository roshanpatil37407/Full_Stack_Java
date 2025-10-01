package filehandling;

import java.io.*;


class Emp implements Serializable {
   
    private int id;
    private String name;
    private  transient String password;
    private int sal;

    public Emp(int id, String name, String password, int sal) {
        this.id = id;
        this.name = name;
        this.password = password;
        this.sal = sal;
    }

    public int getId() { 
    	return id; 
    	}
    public void setId(int id) { 
    	this.id = id; 
    	}

    public String getName() { return name; }
    public void setName(String name) { this.name = name; }

    public String getPassword() { return password; }
    public void setPassword(String password) { this.password = password; }

    public int getSal() { return sal; }
    public void setSal(int sal) { this.sal = sal; }

    @Override
    public String toString() {
        return "id=" + id + ", name=" + name + ", password=" + password + ", sal=" + sal + "";
    }
}

public class SerializeDemo {
    public static void main(String[] args) {
        // Create employee objects
        Emp e1 = new Emp(1, "Ram", "rawhdqgja", 100050);
        Emp e2 = new Emp(2, "Sham", "xrdstyqvsabn", 20000);

        // File to save objects
        String filePath = "C:\\Users\\Admin\\Desktop\\New folder (3)\\emp.ser";

        // ✅ Serialize (write objects to file)
        try (ObjectOutputStream oos = new ObjectOutputStream(new FileOutputStream(filePath))) {
            oos.writeObject(e1);
            oos.writeObject(e2);
            System.out.println(" File written successfully!");
        } catch (IOException ex) {
            ex.printStackTrace();
        }

//         ✅ Deserialize (read objects back from file)
        try (ObjectInputStream ois = new ObjectInputStream(new FileInputStream(filePath))) {
            Emp emp1 = (Emp) ois.readObject();
            Emp emp2 = (Emp) ois.readObject();

            System.out.println("\n Deserialization done! Objects read:");
            System.out.println(emp1);
            System.out.println(emp2);
        } catch (Exception ex) {
            ex.printStackTrace();
        }
    }
}
