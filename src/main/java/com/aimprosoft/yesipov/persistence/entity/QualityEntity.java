package com.aimprosoft.yesipov.persistence.entity;

import lombok.*;

import javax.persistence.*;
import java.util.List;

@Data
@AllArgsConstructor
@NoArgsConstructor
//@EqualsAndHashCode(exclude = {"bicycles"})
//@ToString(exclude = "bicycles")
@Entity(name = "quality")
public class QualityEntity {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long id;

    private String quality;

//    @OneToMany(mappedBy = "quality")
//    private List<BicycleEntity> bicycles;
}
