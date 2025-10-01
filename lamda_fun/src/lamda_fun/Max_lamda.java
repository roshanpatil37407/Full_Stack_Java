package lamda_fun;

@FunctionalInterface
interface Max {
    int getMax(int a, int b);
}

public class Max_lamda {
    public static void main(String[] args) {
        Max max = (a, b) -> (a > b) ? a : b;
        System.out.println("Max: " + max.getMax(15, 25));
    }
}

