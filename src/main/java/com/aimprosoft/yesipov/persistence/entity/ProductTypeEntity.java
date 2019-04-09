package com.aimprosoft.yesipov.persistence.entity;

import lombok.*;

import javax.persistence.*;

@Data
@AllArgsConstructor
@NoArgsConstructor
//@EqualsAndHashCode(exclude = "products")
//@ToString(exclude = "products")
@Entity(name = "product_type")
public class ProductTypeEntity {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long id;

    @Column(name = "type")
    private String productType;

//    @OneToMany(mappedBy = "productType")//, fetch = FetchType.LAZY, cascade = CascadeType.ALL)
//    private List<ProductEntity> products;
}
