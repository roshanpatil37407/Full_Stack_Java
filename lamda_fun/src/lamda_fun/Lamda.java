package lamda_fun;

interface demo {
    public void run();
}

interface demo1 {
    public void sq(int a);
}

interface demo2 {
    public int sum(int a[]);
}

public class Lamda {
    public static void main(String[] args) {
     
        demo ob = () -> {
            System.out.println("hello");
        };
        ob.run();

        
        demo1 ob1 = (a) -> {
            System.out.println("Square: " + (a * a));
        };
        ob1.sq(5); 
        
        
        demo2 ob2 = (arr) -> {
            int sum = 0;
            for (int i = 0; i < arr.length; i++) { 
                sum += arr[i];                     
            }
            return sum;
        };

        int arr[] = {1, 2, 3, 4, 5, 6};
        System.out.println("Sum of array: " + ob2.sum(arr)); 
    }
}
