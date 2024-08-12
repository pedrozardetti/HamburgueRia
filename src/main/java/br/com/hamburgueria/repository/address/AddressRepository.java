package br.com.hamburgueria.repository.address;

import br.com.hamburgueria.config.ConnectionPoolConfig;
import br.com.hamburgueria.model.Address;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.UUID;

public class AddressRepository {

    public int countAddressesByCustomerId(UUID customerId) {
        String SQL = "SELECT COUNT(*) FROM ADDRESS WHERE CUSTOMER_ID = ?";
        try (Connection con = ConnectionPoolConfig.getConnection();
             PreparedStatement preparedStatement = con.prepareStatement(SQL)) {

            preparedStatement.setObject(1, customerId);
            ResultSet rs = preparedStatement.executeQuery();

            if (rs.next()) {
                return rs.getInt(1);
            }
        } catch (Exception e) {
            System.out.println(e.getMessage());
        }
        return 0;
    }


    public void createAddress(Address address) {
        // Verifica se o cliente já tem 5 ou mais endereços
        if (countAddressesByCustomerId(address.getCustomerId()) < 5) {

            String SQL = "INSERT INTO ADDRESS (CEP, STREET, NEIGHBORHOOD, ID, CUSTOMER_ID) VALUES (?, ?, ?, ?, ?)";

            // Usamos try-with-resources para garantir que os recursos, como Connection e PreparedStatement,
            // sejam fechados automaticamente ao final do bloco try, evitando vazamento de recursos.
            try (Connection con = ConnectionPoolConfig.getConnection();
                 PreparedStatement preparedStatement = con.prepareStatement(SQL)) {

                preparedStatement.setString(1, address.getCep());
                preparedStatement.setString(2, address.getStreet());
                preparedStatement.setString(3, address.getNeighborhood());
                preparedStatement.setObject(4, address.getId());
                preparedStatement.setObject(5, address.getCustomerId());
                preparedStatement.execute();
                System.out.println("Endereço cadastrado com sucesso!");

            } catch (Exception e) {
                System.out.println(e.getMessage());
            }
        } else {
            System.out.println("Limite de 5 endereços atingido.");
        }
    }

    public List<Address> findAllAddressByCustomerId(String customerId) {

        String SQL = "SELECT * FROM ADDRESS WHERE CUSTOMER_ID = ?";

        List<Address> addresses = new ArrayList<>();

        try (Connection con = ConnectionPoolConfig.getConnection();
             PreparedStatement preparedStatement = con.prepareStatement(SQL)) {

            preparedStatement.setString(1, customerId);
            ResultSet rs = preparedStatement.executeQuery();

            while (rs.next()) {
                UUID customerAddress = UUID.fromString(rs.getString("CUSTOMER_ID"));
                String cep = rs.getString("CEP");
                String street = rs.getString("STREET");
                String neighborhood = rs.getString("NEIGHBORHOOD");
                UUID id = UUID.fromString(rs.getString("ID"));

                addresses.add(new Address(cep, street, neighborhood, id, customerAddress));
            }

        } catch (Exception e) {
            System.out.println(e.getMessage());
            return Collections.emptyList();
        }

        return addresses;
    }



}
