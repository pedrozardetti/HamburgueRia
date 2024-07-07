package br.com.hamburgueria.repository.customer;

import br.com.hamburgueria.config.ConnectionPoolConfig;
import br.com.hamburgueria.model.Customer;
import br.com.hamburgueria.model.enums.TypeCustomer;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

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


    // Esse método verifica se o cliente existe com base no e-mail para obter a senha criptografada que está no BD
    public Customer findCustomerByEmail(String email) {
        String SQL = "SELECT * FROM CUSTOMER WHERE EMAIL = ?";
        Customer customer = null;

        try {
            Connection con = ConnectionPoolConfig.getConnection();
            PreparedStatement preparedStatement = con.prepareStatement(SQL);
            preparedStatement.setString(1, email);
            ResultSet rs = preparedStatement.executeQuery();

            if (rs.next()) {
                String name = rs.getString("NAME");
                String password = rs.getString("PASSWORD");
                TypeCustomer type = TypeCustomer.valueOf(rs.getString("TYPE"));
                customer = new Customer(name, email, password, type);
            }

            con.close();

        } catch (Exception e) {
            System.out.println("A busca do cliente não deu certo!");
        }

        return customer;
    }
}
