package com.ecomerce.sportscenter.service;

import com.ecomerce.sportscenter.model.ProductResponse;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;

import java.util.List;

public interface ProductService {
    ProductResponse getProductById(Integer productId);
    Page<ProductResponse> getProducts(Pageable pageable);

    List<ProductResponse> searchProductsByName(String keyword);
}
