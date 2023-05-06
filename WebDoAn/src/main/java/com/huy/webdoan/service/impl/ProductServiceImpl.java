package com.huy.webdoan.service.impl;

import com.huy.webdoan.converter.productConverter;
import com.huy.webdoan.dto.productDTO;
import com.huy.webdoan.model.Category;
import com.huy.webdoan.model.Product;
import com.huy.webdoan.repository.CategoryRopository;
import com.huy.webdoan.repository.IProductRepository;
import com.huy.webdoan.service.IProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class ProductServiceImpl implements IProductService {
    @Autowired
    IProductRepository iProductRepository;
    @Autowired
    CategoryRopository categoryRopository;
    @Autowired
    private productConverter productConverter;
    @Override
    public List<Product> finAll() {
        return iProductRepository.findAll();
    }

    @Override
    public Optional<Product> findById(Long id) {
        return iProductRepository.findById(id);
    }

    @Override
    public Product save(Product product) {
        return iProductRepository.save(product);
    }

    @Override
    public void delete(Long id) {
        iProductRepository.deleteById(id);
    }

//    @Override
//    public productDTO save(productDTO productDTO) {
//        Category category = categoryRopository.findOneById(productDTO.getCategory());
//        Product product = productConverter.toModel1(productDTO);
//        product.setCategory(category);
//        product = iProductRepository.save(product);
//        return productConverter.toDTO(product);
//    }

//    @Override
//    public productDTO update(productDTO productDTO) {
//        Optional<Product> oldProduct = iProductRepository.findById(productDTO.getId());
//        Product product = productConverter.toModel(productDTO,oldProduct);
//        Category category = categoryRopository.findOneById(productDTO.getCategory());
//        product.setCategory(category);
//        product = iProductRepository.save(product);
//        return productConverter.toDTO1(product);
//    }

//    @Override
//    public void delete(Long[] ids) {
//        for (long  item : ids ){
//            iProductRepository.delete(item);
//        }
//    }
}
