package threads;

public class IsAliveDemo  extends Thread{
	public void run() {
		System.out.println("Running.........");
	}

	public static void main(String[] args) throws InterruptedException {
		IsAliveDemo t= new IsAliveDemo();
		System.out.println(t.isAlive());
		t.start();
		System.out.println(t.isAlive());
	    t.join();
		System.out.println(t.isAlive());
     
	}

}
