package com.huy.webdoan.model;

import com.huy.webdoan.model.LogIn.User;
import lombok.Getter;
import lombok.Setter;

import javax.persistence.*;
import java.io.Serializable;
@Getter
@Setter
@Entity
@Table(name = "Rating")
public class Rating implements Serializable {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long id;
    private Integer stars;
    @ManyToOne @JoinColumn(name = "username")
    private User userR;
    @ManyToOne @JoinColumn(name = "Productid")
    private Product productR;
}
