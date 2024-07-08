package br.com.hamburgueria.model;

import java.util.UUID;

public class Address {

    private String cep;
    private String street;
    private String neighborhood;
    private UUID id;
    private UUID customerId;

    public Address() {
    }

    public Address(String cep, String street, String neighborhood, UUID id, UUID customerId) {
        this.cep = cep;
        this.street = street;
        this.neighborhood = neighborhood;
        this.id = id;
        this.customerId = customerId;
    }

    public String getCep() {
        return cep;
    }

    public void setCep(String cep) {
        this.cep = cep;
    }

    public String getStreet() {
        return street;
    }

    public void setStreet(String street) {
        this.street = street;
    }

    public String getNeighborhood() {
        return neighborhood;
    }

    public void setNeighborhood(String neighborhood) {
        this.neighborhood = neighborhood;
    }

    public UUID getId() {
        return id;
    }

    public void setId(UUID id) {
        this.id = id;
    }

    public UUID getCustomerId() {
        return customerId;
    }

    public void setCustomerId(UUID customerId) {
        this.customerId = customerId;
    }
}
