package br.com.hamburgueria.model;

import br.com.hamburgueria.model.enums.TypeProduct;

import java.util.UUID;

public class Product {

    private UUID id;
    private String name;
    private double price;
    private TypeProduct type;
    private String url;

    public Product() {
    }

    public Product(UUID id, String name, double price, TypeProduct type, String url) {
        this.id = id;
        this.name = name;
        this.price = price;
        this.type = type;
        this.url = url;
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

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public TypeProduct getType() {
        return type;
    }

    public void setType(TypeProduct type) {
        this.type = type;
    }

    public String getUrl() {
        return url;
    }

    public void setUrl(String url) {
        this.url = url;
    }
}
