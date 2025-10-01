package threads;

public class ThreadDemo extends Thread {
    public void run() {
        for (int i = 1; i <= 15; i++) {
            System.out.println(Thread.currentThread().getName() + " : " + i);
        }
    }

    public static void main(String[] args) {
        ThreadDemo t1 = new ThreadDemo();
        ThreadDemo t2 = new ThreadDemo();

        t1.setName("Thread 1");
        t2.setName("Thread 2");

        t1.start(); 
        t2.start(); 
    }
}
