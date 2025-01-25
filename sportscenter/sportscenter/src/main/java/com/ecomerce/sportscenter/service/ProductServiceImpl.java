package com.ecomerce.sportscenter.service;

import com.ecomerce.sportscenter.entity.Product;
import com.ecomerce.sportscenter.model.ProductResponse;
import com.ecomerce.sportscenter.repository.ProductRepository;
import com.ecomerce.sportscenter.service.ProductService;
import lombok.extern.log4j.Log4j2;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.stream.Collectors;

@Service
@Log4j2
public class ProductServiceImpl implements ProductService {

    private final ProductRepository productRepository;
    public ProductServiceImpl(ProductRepository productRepository) {
        this.productRepository = productRepository;
    }
    @Override
    public ProductResponse getProductById(Integer productId) {
        log.info("Fetching Product by Id: {}",productId);
        Product product = productRepository.findById(productId)
                .orElseThrow(()->new RuntimeException("Product with given does'n't"));
        //now convert the product to product response
        ProductResponse productResponse = convertToProductResponse(product);
        log.info("Fetched product by id: {}",productId);
        return productResponse;
    }

    @Override
    public Page<ProductResponse> getProducts(Pageable pageable) {
        log.info("fetching products");
        //retrieve products from DB
        Page<Product> productPage = productRepository.findAll(pageable);
        //map
        Page<ProductResponse> productResponses = productPage
                .map(this::convertToProductResponse);
        log.info("Fetched all products");
        return productResponses;
    }

    @Override
    public List<ProductResponse> searchProductsByName(String keyword) {
        log.info("Searching Products by Name: {}",keyword);
        //call the custom query method
        List<Product> products = productRepository.searchByName(keyword);
        //Map
        List<ProductResponse> productResponses = products.stream()
                .map(this::convertToProductResponse)
                .collect(Collectors.toList());
        return productResponses;
    }

    private ProductResponse convertToProductResponse(Product product){
        return ProductResponse.builder()
                .id(product.getId())
                .name(product.getName())
                .description(product.getDescription())
                .price(product.getPrice())
                .pictureUrl(product.getPictureUrl())
                .productType(product.getType().getName())
                .productBrand(product.getBrand().getName())
                .build();
    }
}
