package exception;

public class Main {
    public static void main(String[] args) {
        try {
            int[] nums = {5, 10, 15};
            int res = nums[1] / 0;
            System.out.println("Result: " + res);
        } catch (ArrayIndexOutOfBoundsException e) {
            System.out.println("Array error occurred.");
        } catch (ArithmeticException e) {
            System.out.println("Arithmetic error occurred.");
        } finally {
            System.out.println("Done.");
        }
    }
}

