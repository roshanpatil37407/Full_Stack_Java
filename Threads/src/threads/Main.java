package threads;

class MakeTea extends Thread {
    public void run() {
        System.out.println("Making tea...");
        try {
            Thread.sleep(7000);  
        } catch (Exception e) {
            System.out.println("Something went wrong while making tea.");
        }
        System.out.println("Tea is ready!");
    }
}

class MakeToast extends Thread {
    public void run() {
        System.out.println("Making toast...");
        try {
            Thread.sleep(3000);  
        } catch (Exception e) {
            System.out.println("Something went wrong while making toast.");
        }
        System.out.println("Toast is ready!");
    }
}

public class Main {
    public static void main(String[] args) {
        MakeTea tea = new MakeTea();
        MakeToast toast = new MakeToast();

        tea.start();  
        toast.start(); 
    }
}
