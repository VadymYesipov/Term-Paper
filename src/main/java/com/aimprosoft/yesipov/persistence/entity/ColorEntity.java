package com.aimprosoft.yesipov.persistence.entity;

import lombok.*;

import javax.persistence.*;
import java.util.List;

@Data
@AllArgsConstructor
@NoArgsConstructor
//@EqualsAndHashCode(exclude = {"bicycles"})
//@ToString(exclude = "bicycles")
@Entity(name = "color")
public class ColorEntity {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long id;

    private String color;

//    @OneToMany(mappedBy = "color")
//    private List<BicycleEntity> bicycles;
}
