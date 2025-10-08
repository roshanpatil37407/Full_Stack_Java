package main;

import dao.BookDAO;
import model.Book;

import java.sql.SQLException;
import java.util.List;
import java.util.Scanner;

public class LibraryApp {
    private static Scanner scanner = new Scanner(System.in);
    private static BookDAO bookDAO = new BookDAO();

    public static void main(String[] args) {
        while (true) {
            System.out.println("1. Add Book");
            System.out.println("2. View All Books");
            System.out.println("3. Update Book");
            System.out.println("4. Delete Book");
            System.out.println("5. Search Books");
            System.out.println("0. Exit");
            System.out.print("Enter choice: ");
            int choice = Integer.parseInt(scanner.nextLine());
            try {
                switch (choice) {
                    case 1:
                        addBook();
                        break;
                    case 2:
                        viewAllBooks();
                        break;
                    case 3:
                        updateBook();
                        break;
                    case 4:
                        deleteBook();
                        break;
                    case 5:
                        searchBooks();
                        break;
                    case 0:
                        System.exit(0);
                }
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    }

    private static void addBook() throws SQLException {
        System.out.print("Book ID: ");
        int id = Integer.parseInt(scanner.nextLine());
        System.out.print("Title: ");
        String title = scanner.nextLine();
        System.out.print("Author: ");
        String author = scanner.nextLine();
        System.out.print("Category: ");
        String cat = scanner.nextLine();
        System.out.print("Quantity: ");
        int qty = Integer.parseInt(scanner.nextLine());
        Book b = new Book(id, title, author, cat, qty);
        boolean ok = bookDAO.addBook(b);
        System.out.println(ok ? "Book added" : "Error adding book");
    }

    private static void viewAllBooks() throws SQLException {
        List<Book> list = bookDAO.getAllBooks();
        for (Book b : list) {
            System.out.printf("%d | %s | %s | %s | %d%n", b.getBookId(), b.getTitle(), b.getAuthor(), b.getCategory(), b.getQuantity());
        }
    }

    private static void updateBook() throws SQLException {
        System.out.print("Book ID to update: ");
        int id = Integer.parseInt(scanner.nextLine());
        Book existing = bookDAO.getBook(id);
        if (existing == null) {
            System.out.println("Book not found");
            return;
        }
        System.out.print("New Title (" + existing.getTitle() + "): ");
        String title = scanner.nextLine();
        if (!title.isEmpty()) existing.setTitle(title);
        System.out.print("New Author (" + existing.getAuthor() + "): ");
        String auth = scanner.nextLine();
        if (!auth.isEmpty()) existing.setAuthor(auth);
        System.out.print("New Category (" + existing.getCategory() + "): ");
        String cat = scanner.nextLine();
        if (!cat.isEmpty()) existing.setCategory(cat);
        System.out.print("New Quantity (" + existing.getQuantity() + "): ");
        String qtyStr = scanner.nextLine();
        if (!qtyStr.isEmpty()) existing.setQuantity(Integer.parseInt(qtyStr));

        boolean ok = bookDAO.updateBook(existing);
        System.out.println(ok ? "Book updated" : "Error updating book");
    }

    private static void deleteBook() throws SQLException {
        System.out.print("Book ID to delete: ");
        int id = Integer.parseInt(scanner.nextLine());
        boolean ok = bookDAO.deleteBook(id);
        System.out.println(ok ? "Book deleted" : "Error deleting book");
    }

    private static void searchBooks() throws SQLException {
        System.out.print("Search keyword (title or category): ");
        String kw = scanner.nextLine();
        List<Book> list = bookDAO.searchBooksByTitleOrCategory(kw);
        for (Book b : list) {
            System.out.printf("%d | %s | %s | %s | %d%n", b.getBookId(), b.getTitle(), b.getAuthor(), b.getCategory(), b.getQuantity());
        }
    }
}
