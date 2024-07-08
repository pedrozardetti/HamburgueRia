package br.com.hamburgueria.model;

import java.util.Date;
import java.util.UUID;

public class Order {

    private UUID id;
    private double maxPrice;
    private Date createdAt;
    private UUID customerId;

    public Order() {
    }

    public Order(UUID id, double maxPrice, Date createdAt, UUID customerId) {
        this.id = id;
        this.maxPrice = maxPrice;
        this.createdAt = createdAt;
        this.customerId = customerId;
    }

    public UUID getId() {
        return id;
    }

    public void setId(UUID id) {
        this.id = id;
    }

    public double getMaxPrice() {
        return maxPrice;
    }

    public void setMaxPrice(double maxPrice) {
        this.maxPrice = maxPrice;
    }

    public Date getCreatedAt() {
        return createdAt;
    }

    public void setCreatedAt(Date createdAt) {
        this.createdAt = createdAt;
    }

    public UUID getCustomerId() {
        return customerId;
    }

    public void setCustomerId(UUID customerId) {
        this.customerId = customerId;
    }


}
