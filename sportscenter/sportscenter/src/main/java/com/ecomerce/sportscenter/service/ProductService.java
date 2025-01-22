package com.ecomerce.sportscenter.service;

import com.ecomerce.sportscenter.model.ProductResponse;

import java.util.List;

public interface ProductService {
    ProductResponse getProductById(Integer productId);
    List<ProductResponse> getProducts();
}
