package br.com.hamburgueria.repository.orderproduct;

import br.com.hamburgueria.config.ConnectionPoolConfig;
import br.com.hamburgueria.model.OrderProduct;

import java.sql.Connection;
import java.sql.PreparedStatement;

public class OrderProductRepository {

    public void create(OrderProduct orderProduct) {
        String SQL = "INSERT INTO ORDERS_PRODUCT (ID, ORDERS_ID, PRODUCT_ID, QUANTITY) VALUES (?, ?, ?, ?)";

        try {
            Connection connection = ConnectionPoolConfig.getConnection();
            PreparedStatement preparedStatement = connection.prepareStatement(SQL);
            preparedStatement.setObject(1, orderProduct.getId());
            preparedStatement.setObject(2, orderProduct.getOrderId());
            preparedStatement.setObject(3, orderProduct.getProductId());
            preparedStatement.setObject(4, orderProduct.getQuantity());
            preparedStatement.execute();
            System.out.println("Insert feito com sucesso!");

            connection.close();

            return;
        } catch (Exception e) {
            System.out.println(e.getMessage());
            return;
        }
    }
}
