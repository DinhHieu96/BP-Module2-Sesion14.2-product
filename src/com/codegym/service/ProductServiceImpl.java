package com.codegym.service;

import com.codegym.model.Product;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class ProductServiceImpl implements ProductService {
    static Map<Integer, Product> products = new HashMap<>();

    static {
        products.put(1, new Product(1, "Pen", 3000, "Thien Long", "pen.jpg"));
        products.put(2, new Product(2, "Ruller", 5000, "Thien Long", "ruller.jpg"));
        products.put(3, new Product(3, "Book", 7000, "Hong Ha", "book.jpg"));
        products.put(4, new Product(4, "Lavie", 4000, "Nestle", "lavie.jpg"));
    }

    @Override
    public List<Product> findAll() {
        return new ArrayList<>(products.values());
    }

    @Override
    public void save(Product product) {
        products.put(product.getId(), product);
    }

    @Override
    public Product findById(int id) {
        return products.get(id);
    }

    @Override
    public void update(int id, Product product) {
        products.put(id, product);
    }

    @Override
    public void remove(int id) {
        products.remove(id);
    }

    @Override
    public Product searchProductByName(String name) {
        List<Product> productList = findAll();
        for (Product product : productList) {
            if (product.getName().toLowerCase().equals(name.toLowerCase())) return product;
        }
        return null;
    }
}


