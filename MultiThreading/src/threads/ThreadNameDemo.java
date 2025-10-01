package threads;

public class ThreadNameDemo extends Thread{
	public void run(){
		System.out.println(Thread.currentThread().getName());
	}
	public static void main(String[] args) {
		System.out.println("Before changing name: " + Thread.currentThread().getName());

		Thread.currentThread().setName("roshan");

		System.out.println("After changing name: " + Thread.currentThread().getName());
		
		ThreadNameDemo td = new ThreadNameDemo ();
		td.start();
		
		ThreadNameDemo td2 =new ThreadNameDemo ();
		td2.start();
		
		System.out.println("After changing name: " + Thread.currentThread().isAlive());
		System.out.println(td.isAlive());
	}
}
