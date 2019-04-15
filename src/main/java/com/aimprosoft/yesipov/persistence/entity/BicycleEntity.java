package com.aimprosoft.yesipov.persistence.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.*;
import java.util.List;

@Data
@AllArgsConstructor
@NoArgsConstructor
@Entity(name = "bicycle")
public class BicycleEntity extends ProductEntity {

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

    @ManyToOne
    @JoinColumn(name = "bicycle_category_id", insertable = false, updatable = false)
    private BicycleCategoryEntity bicycleCategory;

    //    @OneToMany
//    private List<ImageEntity> images;
}
