package threads;

public class SleepDemo extends Thread {
	public void run() {
		for(int i=0;i<10;i++) {
			System.out.println(i);
			try {
				Thread.sleep(5000);
			}catch(Exception e) {
				System.out.println(e.getMessage());
			}
		}
	}
	public static void main(String [] args) {
		SleepDemo sd = new SleepDemo ();
		sd.start();
	}

}
