package com.aimprosoft.yesipov.persistence.entity;

import lombok.*;

import javax.persistence.*;
import java.util.List;

@Data
@AllArgsConstructor
@NoArgsConstructor
//@EqualsAndHashCode(exclude = {"bicycles"})
//@ToString(exclude = "bicycles")
@Entity(name = "age_category")
public class AgeCategoryEntity {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long id;

    private String age;

//    @OneToMany(mappedBy = "ageCategory")
//    private List<BicycleEntity> bicycles;
}


