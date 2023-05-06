package com.huy.webdoan.service;

import com.huy.webdoan.dto.productDTO;
import com.huy.webdoan.model.Product;

import java.util.List;
import java.util.Optional;

public interface IProductService {
    List<Product> finAll();
    Optional<Product> findById(Long id);
    Product save(Product product);
    void delete(Long id);
//    productDTO save(productDTO productDTO);
//    productDTO update(productDTO productDTO);
//    void delete(Long[] ids);

}
