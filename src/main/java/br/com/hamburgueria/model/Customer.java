package br.com.hamburgueria.model;

import br.com.hamburgueria.model.enums.TypeCustomer;

import java.util.UUID;

public class Customer {

    private UUID id;
    private String name;
    private String email;
    private String password;
    private TypeCustomer type;

    public Customer() {
    }

    public Customer(String name, String email, String password, TypeCustomer type) {
        this.name = name;
        this.email = email;
        this.password = password;
        this.type = type;
    }

    public UUID getId() {
        return id;
    }

    public void setId(UUID id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public TypeCustomer getType() {
        return type;
    }

    public void setType(TypeCustomer type) {
        this.type = type;
    }
}
