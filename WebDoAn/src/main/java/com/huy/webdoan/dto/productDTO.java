package com.huy.webdoan.dto;

import com.huy.webdoan.model.Category;
import com.huy.webdoan.model.OrderDetail;
import com.huy.webdoan.model.Rating;

import java.io.Serializable;
import java.util.List;
public class productDTO implements Serializable {
//    private static final long serialVersionUID = 1L;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public void setCategory(Long category) {
        this.category = category;
    }

    private Long id;
    private String name;
    private String image;
    private String image2;
    private String image3;
    private Double price;
    private Integer discount;
    private String description;
    private Boolean available;
    private Long category;
//    private List<Rating> ratings;
//    private List<OrderDetail> orderDetails;


    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public String getImage2() {
        return image2;
    }

    public void setImage2(String image2) {
        this.image2 = image2;
    }

    public String getImage3() {
        return image3;
    }

    public void setImage3(String image3) {
        this.image3 = image3;
    }

    public Double getPrice() {
        return price;
    }

    public void setPrice(Double price) {
        this.price = price;
    }

    public Integer getDiscount() {
        return discount;
    }

    public void setDiscount(Integer discount) {
        this.discount = discount;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public Boolean getAvailable() {
        return available;
    }

    public void setAvailable(Boolean available) {
        this.available = available;
    }

    public Long getCategory() {
        return category;
    }

    public void setCategory(Category Long) {
        this.category = category;
    }

//    public List<Rating> getRatings() {
//        return ratings;
//    }
//
//    public void setRatings(List<Rating> ratings) {
//        this.ratings = ratings;
//    }
//
//    public List<OrderDetail> getOrderDetails() {
//        return orderDetails;
//    }
//
//    public void setOrderDetails(List<OrderDetail> orderDetails) {
//        this.orderDetails = orderDetails;
//    }

    public productDTO() {
    }

    public productDTO(Long id, String name, String image, String image2, String image3, Double price, Integer discount, String description, Boolean available, Long category) {
        this.id = id;
        this.name = name;
        this.image = image;
        this.image2 = image2;
        this.image3 = image3;
        this.price = price;
        this.discount = discount;
        this.description = description;
        this.available = available;
        this.category = category;
    }
}
