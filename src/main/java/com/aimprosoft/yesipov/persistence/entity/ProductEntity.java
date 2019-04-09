package com.aimprosoft.yesipov.persistence.entity;

import lombok.*;

import javax.persistence.*;

@Data
@AllArgsConstructor
@NoArgsConstructor
//@EqualsAndHashCode(exclude = {"bicycle"})
//@ToString(exclude = "bicycle")
@Entity(name = "product")
public class ProductEntity {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "product_id")
    private Long productId;

    @ManyToOne
    @JoinColumn(name = "product_type_id")
    private ProductTypeEntity productType;

    private Boolean isAvailable;

//    @OneToOne(mappedBy = "product")//fetch = FetchType.LAZY, cascade =  CascadeType.ALL,
//    private BicycleEntity bicycle;
}
