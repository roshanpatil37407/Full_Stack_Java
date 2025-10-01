package multiThreading;


class MyNumber extends Thread {
    public void run() {
        for (int i = 1; i <= 26; i++) {
            System.out.print(i +" ");
            try {
                Thread.sleep(500);  
            } catch (InterruptedException e) {
               
            }
        }
    }
}

class MyLetter extends Thread {
    public void run() {
        for (char c = 'A'; c <= 'Z'; c++) {
            System.out.print(c +" ");
            try {
                Thread.sleep(500); 
            } catch (InterruptedException e) {
               
            }
        }
    }
}

public class Main {
    public static void main(String[] args) {
        MyNumber t1 = new MyNumber();
        MyLetter l1 = new MyLetter();
        t1.start();
        l1.start();
    }
}

