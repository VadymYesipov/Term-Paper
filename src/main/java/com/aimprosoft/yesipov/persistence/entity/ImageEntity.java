package com.aimprosoft.yesipov.persistence.entity;

import lombok.*;
import org.hibernate.annotations.Type;

import javax.persistence.*;

@Data
@AllArgsConstructor
@NoArgsConstructor
//@EqualsAndHashCode(exclude = {"bicycles"})
//@ToString(exclude = {"bicycles", "image"})
@Entity(name = "image")
public class ImageEntity {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long id;

//    @Lob
//    @Basic(fetch = FetchType.LAZY)
    private String image;

//    @OneToMany(mappedBy = "image")
//    private List<BicycleEntity> bicycles;
}
