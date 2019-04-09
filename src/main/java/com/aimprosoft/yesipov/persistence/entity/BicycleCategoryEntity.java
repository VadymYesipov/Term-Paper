package com.aimprosoft.yesipov.persistence.entity;

import lombok.*;

import javax.persistence.*;
import java.util.List;

@Data
@AllArgsConstructor
@NoArgsConstructor
//@EqualsAndHashCode(exclude = {"bicycles"})
//@ToString(exclude = "bicycles")
@Entity(name = "bicycle_category")
public class BicycleCategoryEntity {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long id;

    private String category;

//    @OneToMany(mappedBy = "bicycleCategory")
//    private List<BicycleEntity> bicycles;
}
