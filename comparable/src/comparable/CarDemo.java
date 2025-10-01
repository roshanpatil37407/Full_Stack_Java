package comparable;

import java.util.*;


class Car {
 private String make;
 private String model;
 private int year;

 public Car(String make, String model, int year) {
     this.make = make;
     this.model = model;
     this.year = year;
 }

 public String getMake() {
     return make;
 }
 public String getModel() {
     return model;
 }
 public int getYear() {
     return year;
 }

 @Override
 public String toString() {
     return make + " - " + model + " - " + year;
 }
}

//Comparator for Make
class MakeComparator implements Comparator<Car> {
 @Override
 public int compare(Car c1, Car c2) {
     return c1.getMake().compareTo(c2.getMake());
 }
}

//Comparator for Model
class ModelComparator implements Comparator<Car> {
 @Override
 public int compare(Car c1, Car c2) {
     return c1.getModel().compareTo(c2.getModel());
 }
}

//Comparator for Year
class YearComparator implements Comparator<Car> {
 @Override
 public int compare(Car c1, Car c2) {
     return Integer.compare(c1.getYear(), c2.getYear());
 }
}

public class CarDemo {
 public static void main(String[] args) {
     List<Car> cars = new ArrayList<>();
     cars.add(new Car("Toyota", "Camry", 2018));
     cars.add(new Car("Honda", "Accord", 2020));
     cars.add(new Car("Toyota", "Corolla", 2017));
     cars.add(new Car("Honda", "Civic", 2019));
     cars.add(new Car("Ford", "Focus", 2016));

     // Chaining comparators: make -> model -> year
     Comparator<Car> carComparator = new MakeComparator()
                                         .thenComparing(new ModelComparator())
                                         .thenComparing(new YearComparator());

     Collections.sort(cars, carComparator);

     // Print sorted cars
     for (Car car : cars) {
         System.out.println(car);
     }
 }
}

