package threads;



class MyRunnable implements Runnable {
    public void run() {
        for (int i = 1; i <= 15; i++) {
            System.out.println(Thread.currentThread().getName() + " : " + i);
        }
    }
}

public class Main {
    public static void main(String[] args) {
        MyRunnable runnableTask = new MyRunnable();

        Thread t1 = new Thread(runnableTask);
        Thread t2 = new Thread(runnableTask);

        t1.setName("Thread 1");
        t2.setName("Thread 2");

        t1.start();
        t2.start();
    }
}
