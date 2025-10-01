package threads;

class YieldDemo extends Thread {
    public void run() {
        for (int i = 1; i <= 3; i++) {
            System.out.println(getName() + " : " + i);
            Thread.yield(); // Suggest CPU to switch to another thread
        }
    }

    public static void main(String[] args) {
        YieldDemo t1 = new YieldDemo();
        YieldDemo t2 = new YieldDemo();

        t1.setName("Thread-A");
        t2.setName("Thread-B");

        t1.start();
        t2.start();
        
        Thread t = Thread.currentThread();
        System.out.println("Current Thread: " + t.getName());
    }
}

