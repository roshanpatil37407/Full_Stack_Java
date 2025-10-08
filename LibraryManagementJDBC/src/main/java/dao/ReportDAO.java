package dao;

import util.DBUtil;

import java.sql.*;

public class ReportDAO {
    public void generateReport(Date startDate, Date endDate) throws SQLException {
        try (Connection conn = DBUtil.getConnection();
             CallableStatement cs = conn.prepareCall("{CALL sp_LibraryReport(?, ?)}")) {
            cs.setDate(1, startDate);
            cs.setDate(2, endDate);
            boolean hasResults = cs.execute();

            // First result: total books
            if (hasResults) {
                try (ResultSet rs1 = cs.getResultSet()) {
                    if (rs1.next()) {
                        int totalBooks = rs1.getInt("total_books");
                        System.out.println("Total books: " + totalBooks);
                    }
                }
            }

            // Next result: issued books
            if (cs.getMoreResults()) {
                try (ResultSet rs2 = cs.getResultSet()) {
                    System.out.println("Books currently issued:");
                    while (rs2.next()) {
                        int id = rs2.getInt("id");
                        int bookId = rs2.getInt("book_id");
                        int memId = rs2.getInt("member_id");
                        Date issueDt = rs2.getDate("issue_date");
                        System.out.printf("%d: book %d issued to %d on %s%n", id, bookId, memId, issueDt);
                    }
                }
            }

            // Next: fines summary
            if (cs.getMoreResults()) {
                try (ResultSet rs3 = cs.getResultSet()) {
                    if (rs3.next()) {
                        double totalFines = rs3.getDouble("total_fines");
                        System.out.println("Total fines collected: " + totalFines);
                    }
                }
            }
        }
    }
}
