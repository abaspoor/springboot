package com.ecomerce.sportscenter.controller;

import com.ecomerce.sportscenter.model.BrandResponse;
import com.ecomerce.sportscenter.model.ProductResponse;
import com.ecomerce.sportscenter.model.TypeResponse;
import com.ecomerce.sportscenter.service.BrandService;
import com.ecomerce.sportscenter.service.ProductService;
import com.ecomerce.sportscenter.service.TypeService;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageImpl;
import org.springframework.data.domain.Pageable;
import org.springframework.data.web.PageableDefault;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/api/products")
public class ProductController {
    private final ProductService productService;
    private final TypeService typeService;
    private final BrandService brandService;

    public ProductController(ProductService productService, TypeService typeService, BrandService brandService) {
        this.productService = productService;
        this.typeService = typeService;
        this.brandService = brandService;
    }
    @GetMapping("/{id}")
    public ResponseEntity<ProductResponse> getProductById(@PathVariable("id") Integer productId){
        ProductResponse productResponse = productService.getProductById(productId);
        return new ResponseEntity<>(productResponse, HttpStatus.OK);
    }
//
    @GetMapping()
    public ResponseEntity<Page<ProductResponse>> getProducts(
            @PageableDefault(size = 10)Pageable pageable,@RequestParam(name="keyword",required = false) String keyword){
        Page<ProductResponse> productResponsePage = null;
        if(keyword!=null && !keyword.isEmpty()){
            List<ProductResponse> productResponses = productService.searchProductsByName(keyword);
            productResponsePage = new PageImpl<>(productResponses, pageable, productResponses.size());
        }
        else {
//            Page<ProductResponse> productResponsePage = productService.getProducts(pageable);
            productResponsePage = productService.getProducts(pageable);
        }
        return new ResponseEntity<>(productResponsePage,HttpStatus.OK);
    }

    @GetMapping("/brands")
    public ResponseEntity<List<BrandResponse>> getBrands(){
        List<BrandResponse> brandResponses = brandService.getAllBrands();
        return new ResponseEntity<>(brandResponses,HttpStatus.OK);
    }

    @GetMapping("/types")
    public ResponseEntity<List<TypeResponse>> getTypes(){
        List<TypeResponse> typeResponses = typeService.getAllTypes();
        return new ResponseEntity<>(typeResponses,HttpStatus.OK);
    }

    @GetMapping("/search")
    public ResponseEntity<List<ProductResponse>> searchProducts(@RequestParam("keyword") String keyword){
        List<ProductResponse> productResponses = productService.searchProductsByName(keyword);
        return new ResponseEntity<>(productResponses,HttpStatus.OK);
    }
}
