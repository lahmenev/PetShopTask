package com.interview.petshop.service;

import com.interview.petshop.model.Product;

import java.util.List;

public interface ProductService {
    public Iterable<Product> getAllProducts();

    public Product getProductById(Long id);

    public void saveOrUpdate(Product product);

    public void deleteProduct(Long id);


}
