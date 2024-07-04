package br.com.hamburgueria.repository.customer;

import br.com.hamburgueria.config.ConnectionPoolConfig;
import br.com.hamburgueria.model.Customer;

import java.sql.Connection;
import java.sql.PreparedStatement;

public class CustomerRepository {

    public void createCustomer(Customer customer) {
        String SQL = "INSERT INTO CUSTOMER (NAME, EMAIL, PASSWORD, TYPE) VALUES (?, ?, ?, ?)";

        try {
            Connection con = ConnectionPoolConfig.getConnection();
            PreparedStatement preparedStatement = con.prepareStatement(SQL);
            preparedStatement.setString(1, customer.getName());
            preparedStatement.setString(2, customer.getEmail());
            preparedStatement.setString(3, customer.getPassword());
            preparedStatement.setString(4, customer.getType().toString());
            preparedStatement.execute();

            con.close();

        } catch (Exception e) {
            System.out.println("A criação do customer não deu certo!");
        }

    }
}
