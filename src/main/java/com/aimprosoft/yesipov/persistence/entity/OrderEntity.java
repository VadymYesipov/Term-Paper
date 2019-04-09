package com.aimprosoft.yesipov.persistence.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.sql.Date;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class OrderEntity {

    private long id;

    private double price;

    private Date startDate;

    private Date endDate;

    private UserEntity user;

    private ProductEntity product;
}
