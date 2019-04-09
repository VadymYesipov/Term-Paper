package com.aimprosoft.yesipov.persistence.entity;

import lombok.*;

import javax.persistence.*;
import java.util.List;

@Data
@AllArgsConstructor
@NoArgsConstructor
//@EqualsAndHashCode(exclude = {"bicycles"})
//@ToString(exclude = "bicycles")
@Entity(name = "brand")
public class BrandEntity {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long id;

    private String brandName;

    private String modelName;

//    @OneToMany(mappedBy = "brand")
//    private List<BicycleEntity> bicycles;
}
