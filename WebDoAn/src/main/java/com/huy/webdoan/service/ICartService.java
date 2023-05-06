package com.huy.webdoan.service;

import com.huy.webdoan.model.Cart;
import com.huy.webdoan.model.LogIn.User;

import java.util.List;

public interface ICartService {
    void addToCart(Long id);
    List<Cart> finAll();
}
