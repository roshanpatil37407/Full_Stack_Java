package threads;

public class PriorityDemo  extends Thread{
	public void run() {
		 System.out.println(getName() + " Priority: " + getPriority());
	}

	public static void main(String[] args) {
		PriorityDemo p= new PriorityDemo();
		PriorityDemo p1=new PriorityDemo();
		
		p.setName("high");
		p1.setName("low");
		
		p.setPriority(Thread.MAX_PRIORITY);
		p1.setPriority(Thread.MIN_PRIORITY);
		
		p.start();
		p1.start();

	}

}
