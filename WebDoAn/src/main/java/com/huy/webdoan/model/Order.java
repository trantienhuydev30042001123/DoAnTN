package com.huy.webdoan.model;

import com.fasterxml.jackson.annotation.JsonIgnore;
import com.huy.webdoan.model.LogIn.User;
import lombok.Getter;
import lombok.Setter;

import javax.persistence.*;
import java.io.Serializable;
import java.util.Date;
import java.util.List;
@Getter
@Setter
@Entity
@Table(name = "Orders")
public class Order implements Serializable {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long id;
    private String address;
    @Temporal(TemporalType.DATE)
    @Column(name = "Createdate")
    private Date createDate = new Date();
    @ManyToOne @JoinColumn(name = "Username")
    private User user;
    private Double total;
    private Boolean status = false;
    @JsonIgnore
    @OneToMany(mappedBy = "order")
    List<OrderDetail> orderDetails;

    public Order() {
    }
}
