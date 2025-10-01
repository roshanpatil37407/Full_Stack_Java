package custom_exception;

// Custom Exception Class
public class InvalidAgeException extends Exception {
    // Constructor with message
    InvalidAgeException(String msg) {
        super(msg); // Correct placement of super()
    }
}

// Main Class
class Main {
    // Method that throws the custom exception
    public static void check(int age) throws InvalidAgeException {
        if (age < 18) {
            throw new InvalidAgeException("Age is below 18. Not eligible.");
        } else {
            System.out.println("You are eligible.");
        }
    }

    public static void main(String[] args) {
        try {
            check(15); // test with age < 18
        } catch (InvalidAgeException e) {
            System.out.println("Exception caught: " + e.getMessage());
        }

        System.out.println("Program continues...");
    }
}
