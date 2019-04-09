package com.aimprosoft.yesipov.persistence.repository;

import com.aimprosoft.yesipov.persistence.entity.ProductEntity;
import org.springframework.data.jpa.repository.JpaRepository;

public interface ProductRepository extends JpaRepository<ProductEntity, Long> {

}
