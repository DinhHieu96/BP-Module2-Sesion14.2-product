package com.codegym.model;

public class Product {
    private int id;
    private String name;
    private int price;
    private String producer;
    private String avatar;

    public Product() {
    }

    public Product(int id, String name, int price, String producer, String avatar) {
        this.id = id;
        this.name = name;
        this.price = price;
        this.producer = producer;
        this.avatar = avatar;
    }

    public int getId() {

        return id;
    }

    public void setId(int id) {

        this.id = id;
    }

    public String getName() {

        return name;
    }

    public void setName(String name) {

        this.name = name;
    }

    public int getPrice() {

        return price;
    }

    public void setPrice(int price) {

        this.price = price;
    }

    public String getProducer() {

        return producer;
    }

    public void setProducer(String producer) {

        this.producer = producer;
    }

    public String getAvatar() {
        return avatar;
    }

    public void setAvatar(String avatar) {
        this.avatar = avatar;
    }
}
