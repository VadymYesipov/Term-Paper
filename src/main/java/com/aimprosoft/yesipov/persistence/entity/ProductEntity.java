package com.aimprosoft.yesipov.persistence.entity;

import lombok.Data;

import javax.persistence.*;
import java.util.List;

@MappedSuperclass
@Data
public class ProductEntity {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "id")
    private Long id;

    private String description;

    private double price;

    private Boolean isAvailable;

    @ManyToOne
    @JoinColumn(name = "brand_id")
    private BrandEntity brand;

    @ManyToOne
    @JoinColumn(name = "quality_id")
    private QualityEntity quality;

    @ManyToOne
    @JoinColumn(name = "image_id")
    private ImageEntity image;

    @ManyToOne
    @JoinColumn(name = "color_id")
    private ColorEntity color;
}
