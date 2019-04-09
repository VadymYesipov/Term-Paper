package com.aimprosoft.yesipov.persistence.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.*;

@Data
@AllArgsConstructor
@NoArgsConstructor
@Entity(name = "bicycle")
public class BicycleEntity {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long id;

    @OneToOne//(fetch = FetchType.LAZY, optional = false)
    @JoinColumn(name = "product_id", nullable = false)
    private ProductEntity product;

    @ManyToOne
    @JoinColumn(name = "age_category_id")
    private AgeCategoryEntity ageCategory;

    @ManyToOne
    @JoinColumn(name = "brake_type_id")
    private BrakeTypeEntity brakeType;

    @ManyToOne
    @JoinColumn(name = "wheels_amount_id")
    private WheelsAmountEntity wheelsAmount;

    @ManyToOne
    @JoinColumn(name = "speed_amount_id")
    private SpeedAmountEntity speedAmount;

    private String description;

    @ManyToOne
    @JoinColumn(name = "bicycle_category_id")
    private BicycleCategoryEntity bicycleCategory;

    @ManyToOne
    @JoinColumn(name = "brand_id")
    private BrandEntity brand;

    private Double price;

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
