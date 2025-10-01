package comparable;

import java.util.*;

class Book implements Comparable<Book> {
    String title, author;
    int year;

    public Book(String title, String author, int year) {
        this.title = title;
        this.author = author;
        this.year = year;
    }

    @Override
    public int compareTo(Book other) {
        return this.author.compareTo(other.author); 
    }

    @Override
    public String toString() {
        return title + " by " + author + " " + year + "\n";
    }
}

class BookYearComparator implements Comparator<Book> {
    public int compare(Book b1, Book b2) {
        return Integer.compare(b1.year, b2.year);
    }
}

public class BookSort {
    public static void main(String[] args) {
        List<Book> books = Arrays.asList(
            new Book("Java Basics", "Akash", 2022),
            new Book("Spring Guide", "Avinash", 2020),
            new Book("DSA", "Gajanan", 2021)
        );

        Collections.sort(books); 
        System.out.println("By Author: " + books +"\n");
        System.out.println();

        Collections.sort(books, new BookYearComparator()); 
        System.out.println("By Year: " + books +"\n");
    }
}

