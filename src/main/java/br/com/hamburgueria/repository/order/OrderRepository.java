package br.com.hamburgueria.repository.order;

import br.com.hamburgueria.config.ConnectionPoolConfig;
import br.com.hamburgueria.model.Order;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;

public class OrderRepository {

    public void create(Order order) {
        String SQL = "INSERT INTO ORDERS (ID, MAX_PRICE, CREATED_AT, CUSTOMER_ID, ADDRESS_ID) VALUES (?, ?, ?, ?, ?)";

        try {
            Connection connection = ConnectionPoolConfig.getConnection();
            PreparedStatement preparedStatement = connection.prepareStatement(SQL);
            preparedStatement.setObject(1, order.getId());
            preparedStatement.setDouble(2, order.getMaxPrice());
            preparedStatement.setDate(3, (Date) order.getCreatedAt());
            preparedStatement.setObject(4, order.getCustomerId());
            preparedStatement.setObject(5, order.getAddressId());
            preparedStatement.execute();
            System.out.println("Deu certo!");

            connection.close();

            return;
        } catch (Exception e) {
            System.out.println(e.getMessage());
            return;
        }
    }

}
