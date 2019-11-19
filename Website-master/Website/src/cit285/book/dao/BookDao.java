package cit285.book.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import cit285.book.domain.Author;
import cit285.book.domain.Book;

public class BookDao {
	
	// Read the statements from file, add to batch and send execute the batch
	public void sendBachToDb(List<String> batches) throws Exception {
		//String line = "";
		//String batch = "";
		//Scanner input = null;
		
		// Get database connection
		Connection connection = getConnection();
		
		// Check if this database support batch updates
		if(connection.getMetaData().supportsBatchUpdates()) {
			
			// Create statement
			Statement statement = connection.createStatement();
			
			// Add batch to the statement
			for (String batch: batches) {
				statement.addBatch(batch);
			}
			
			// Execute the batch
			statement.executeBatch();
		}else {
			System.out.println("Batch updates not supported.");
		}
		System.out.println("Batch sent successfully.");
	}
	
	public List<Book> getBooks() 
			throws SQLException, ClassNotFoundException {
		List<Book> booksList = new ArrayList<>();
		
		Connection connection = getConnection();
		// Create statement
		Statement statement = connection.createStatement();
		
		// Execute statement
		ResultSet resultSet = statement.executeQuery("select * from Book");
		
		// Create prepared statement to get Author.
		PreparedStatement preparedStatement = connection.prepareStatement("select * from Author where AuthorID=?");
		
		// Iterate through the result and print
		while(resultSet.next()) {
			Book book = new Book();
			book.setBookid(resultSet.getInt(1));
			book.setIsbn(resultSet.getString(2));
			book.setTitle(resultSet.getString(3));
			book.setEditor(resultSet.getString(4));
			book.setEdition(resultSet.getString(5));
			book.setYear(resultSet.getInt(6));
			
			// Get the author for this book
			preparedStatement.setInt(1,resultSet.getInt(7));
			ResultSet rset = preparedStatement.executeQuery();
			if(rset.next()) {
				Author author = new Author();
				
				author.setAuthorid(rset.getInt(1));
				author.setAuthorfirstname(rset.getString(2));
				author.setAuthorlastname(rset.getString(3));
				book.setAuthor(author);
			}
			
			booksList.add(book);
		}
		return booksList;
	}
	
	private Connection getConnection() 
			throws SQLException, ClassNotFoundException {
		
		// 	Load and register Driver
		Class.forName("com.mysql.cj.jdbc.Driver");
		System.out.println("Driver loaded!");
		
		// Connect to the database
		Connection connection = DriverManager.getConnection("jdbc:mysql://localhost/book","root","BOEp717380");
		System.out.println("Database connected!");
		
		return connection;
	}
}
