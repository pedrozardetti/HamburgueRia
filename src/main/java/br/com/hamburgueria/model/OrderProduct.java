package br.com.hamburgueria.model;

import java.util.UUID;

public class OrderProduct {
    //
    private UUID id;
    private UUID orderId;
    private UUID productId;
    private int quantity;

    public OrderProduct() {
    }

    public OrderProduct(UUID id, UUID orderId, UUID productId, int quantity) {
        this.id = id;
        this.orderId = orderId;
        this.productId = productId;
        this.quantity = quantity;
    }

    public UUID getId() {
        return id;
    }

    public void setId(UUID id) {
        this.id = id;
    }

    public UUID getOrderId() {
        return orderId;
    }

    public void setOrderId(UUID orderId) {
        this.orderId = orderId;
    }

    public UUID getProductId() {
        return productId;
    }

    public void setProductId(UUID productId) {
        this.productId = productId;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }
}
