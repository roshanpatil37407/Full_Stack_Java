package threads;

public class JoinDemo extends Thread {
   public void run() {
	   for (int i = 1; i <= 3; i++) {
           System.out.println(getName() + " " + i);
       }
   }
	public static void main(String[] args) throws InterruptedException {
		JoinDemo j1 = new JoinDemo();
				JoinDemo j2 = new JoinDemo();
				
		j1.setName("roshan");
		j2.setName("prem");
				
				j1.start();
				j1.join();
				j2.start();

	}

}
