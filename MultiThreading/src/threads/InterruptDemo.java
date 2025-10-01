package threads;

class InterruptDemo extends Thread {
    public void run() {
        try {
            Thread.sleep(5000);
            System.out.println("Thread completed.");
        } catch (InterruptedException e) {
            System.out.println("Thread interrupted.");
        }
    }

    public static void main(String[] args) {
        InterruptDemo t = new InterruptDemo();
        t.start();
        t.interrupt(); 
    }
}
