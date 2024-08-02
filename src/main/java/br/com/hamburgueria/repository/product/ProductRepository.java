package br.com.hamburgueria.repository.product;

import br.com.hamburgueria.config.ConnectionPoolConfig;
import br.com.hamburgueria.model.Product;
import br.com.hamburgueria.model.enums.TypeProduct;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.UUID;

public class ProductRepository {

    public List<Product> findProductsByType(String type) {

        String SQL = "SELECT * FROM  PRODUCT WHERE TYPE = ?";

        List<Product> products = null;
        try {
            Connection con = ConnectionPoolConfig.getConnection();
            PreparedStatement preparedStatement = con.prepareStatement(SQL);
            preparedStatement.setString(1, type);
            ResultSet rs = preparedStatement.executeQuery();
            products = new ArrayList<>();


            // Repetição para iterar sobre os parâmetros do product no banco de dados;
            while (rs.next()) {
                UUID id = UUID.fromString(rs.getString("ID"));
                String name = rs.getString("NAME");
                double price = rs.getDouble("PRICE");
                TypeProduct typeProduct = TypeProduct.valueOf(rs.getString("TYPE"));
                String url = rs.getString("URL");
                // Instancia um objeto do tipo Product com os parâmetros
                Product product = new Product(id, name, price, typeProduct, url);
                // Adiciona essa instãncia do objeto na nossa lista
                products.add(product);

            }
            con.close();
            return products;


        } catch (Exception e) {
            System.out.println("A busca do tipo do produto não deu certo!");
            return Collections.emptyList();
        }


    }

    public Product findProductById(String id) {

        String SQL = "SELECT * FROM PRODUCT WHERE ID = ?";

        try {
            Connection con = ConnectionPoolConfig.getConnection();
            PreparedStatement preparedStatement = con.prepareStatement(SQL);
            preparedStatement.setObject(1, UUID.fromString(id));
            ResultSet rs = preparedStatement.executeQuery();

            Product product = null;

            while (rs.next()) {


                UUID idFound = UUID.fromString(rs.getString("ID"));
                String name = rs.getString("NAME");
                double price = rs.getDouble("PRICE");
                TypeProduct typeProduct = TypeProduct.valueOf(rs.getString("TYPE"));
                String url = rs.getString("URL");
                product = new Product(idFound, name, price, typeProduct, url);
            }

            con.close();
            return product;

        } catch (Exception e) {
            System.out.println("Não foi possível encontrar o ID deste produto!");
            return null;
        }
    }
}
