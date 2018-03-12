package br.com.senai.sp.informatica.mercadofamilia.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class ConnectionFactory {
	
	private Connection connection;
	
	public void open() throws ClassNotFoundException, SQLException {
		
		Class.forName("com.mysql.cj.jdbc.Driver");
		final String USUARIO = "root";
		final String SENHA = "root132";
		
		String sql = "jdbc:mysql://localhost:3306/mercado_familia?serverTimezone=UTC";
		connection = DriverManager.getConnection(sql, USUARIO, SENHA);
		
	}
	
	public void close() {
		if(connection != null) {
			try {
				connection.close();
			} catch (Exception e) {
				System.out.println(e.getMessage());
			}
		}
	}
	
	public Connection getConnection() {
		return connection;
	}

}
